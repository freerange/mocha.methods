def explode(uri)
  query_hash = (uri.query || '').split('&').inject({}){ |h, kv| h.merge(Hash[*kv.split('=')]) }
  URI::Generic::COMPONENT.inject({}){ |h, k| h.merge(k => uri.__send__(k)) }.merge(:query => query_hash)
end
