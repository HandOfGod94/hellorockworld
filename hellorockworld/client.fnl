(local http_request (require :http.request))

(fn ping []
  (let [[_ resp] (doto (http_request.new_from_uri "http://example.com")
                       (: :go))
        body (resp:get_body_as_string)]
    (print body)))

{: ping}
