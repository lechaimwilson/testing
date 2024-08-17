 root_domains = {
          "company-tt.com" =>  {
            "ssl-cert" =>  "star.company-tt.com"
          },
          "company-tw.com" => {
            "ssl-cert" => "star.company-tw.com",
            "interior_subzones" => {
              "ch1" => {
                "ssl-cert" => "star.ch1.company-tw.com"
              }
            }
          }
        }


p root_domains

a = 'test'

virt = root_domains.inject({}){ |h, (k,v)| h["staging-#{k}"] = v; h }




p virt
