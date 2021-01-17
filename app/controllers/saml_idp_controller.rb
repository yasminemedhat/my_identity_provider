class SamlIdpController < SamlIdp::IdpController

    def idp_authenticate(email, password)
      true
    end
  
    def idp_make_saml_response(user)
      encode_SAMLResponse("yasmine.medhat@trianglz.com", {"attributes_provider" => '<saml:Attribute Name="userId" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified">
            <saml:AttributeValue xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyType">0051w000004gxEb</saml:AttributeValue>
        </saml:Attribute>
        <saml:Attribute Name="username" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified">
            <saml:AttributeValue xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyType">yasmine.medhat@trianglz.com.rdp</saml:AttributeValue>
        </saml:Attribute>
        <saml:Attribute Name="email" NameFormat="urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified">
            <saml:AttributeValue xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xs:anyType">yasmine.medhat@trianglz.com</saml:AttributeValue>
        </saml:Attribute>
        '})
    end
  
  end