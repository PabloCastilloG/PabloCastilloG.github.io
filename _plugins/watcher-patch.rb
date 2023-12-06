# Frozen_string_literal: true

require 'jekyll-watch'

module Jekyll
    module Watcher
        extend self

        alias_method :oridinal_listen_ignore_paths, :listen_ignore_paths

        def listen_ignore_paths(options)
            oridinal_listen_ignore_paths(options) + [%r!.*\.TMP!i]
        end
    end
end