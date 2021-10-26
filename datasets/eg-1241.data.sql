PGDMP         )            	    y           eg_1241_source    9.6.19    9.6.19 +   �+           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �+           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �+           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            X+          0    108383    acq_lineitem_history 
   TABLE DATA               &  COPY acq.acq_lineitem_history (audit_id, audit_time, audit_action, id, creator, editor, selector, provider, purchase_order, picklist, expected_recv_time, create_time, edit_time, marc, eg_bib_id, source_label, state, cancel_reason, estimated_unit_price, claim_policy, queued_record) FROM stdin;
    acq    	   evergreen    false    1078   $      �+           0    0    acq_lineitem_pkey_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acq.acq_lineitem_pkey_seq', 1, false);
            acq    	   evergreen    false    1077            V+          0    108365    acq_purchase_order_history 
   TABLE DATA               �   COPY acq.acq_purchase_order_history (audit_id, audit_time, audit_action, id, owner, creator, editor, ordering_agency, create_time, edit_time, provider, state, order_date, name, cancel_reason, prepayment_required) FROM stdin;
    acq    	   evergreen    false    1075   A      �+           0    0    acq_purchase_order_pkey_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('acq.acq_purchase_order_pkey_seq', 1, false);
            acq    	   evergreen    false    1074            ,+          0    107738    fiscal_calendar 
   TABLE DATA               0   COPY acq.fiscal_calendar (id, name) FROM stdin;
    acq    	   evergreen    false    1014   ^      �(          0    100043    org_unit_type 
   TABLE DATA               j   COPY actor.org_unit_type (id, name, opac_label, depth, parent, can_have_vols, can_have_users) FROM stdin;
    actor    	   evergreen    false    355   �      �(          0    100062    org_unit 
   TABLE DATA               �   COPY actor.org_unit (id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible, fiscal_calendar) FROM stdin;
    actor    	   evergreen    false    357   $	      	+          0    107196    cancel_reason 
   TABLE DATA               S   COPY acq.cancel_reason (id, org_unit, label, description, keep_debits) FROM stdin;
    acq    	   evergreen    false    979   g	      �+           0    0    cancel_reason_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acq.cancel_reason_id_seq', 2000, true);
            acq    	   evergreen    false    978            �*          0    106803    claim_policy 
   TABLE DATA               D   COPY acq.claim_policy (id, org_unit, name, description) FROM stdin;
    acq    	   evergreen    false    946   �      J+          0    108228 
   claim_type 
   TABLE DATA               B   COPY acq.claim_type (id, org_unit, code, description) FROM stdin;
    acq    	   evergreen    false    1060   �      �*          0    106770    currency_type 
   TABLE DATA               1   COPY acq.currency_type (code, label) FROM stdin;
    acq    	   evergreen    false    942   �      �*          0    107038    fund 
   TABLE DATA               �   COPY acq.fund (id, org, name, year, currency_type, code, rollover, propagate, active, balance_warning_percent, balance_stop_percent) FROM stdin;
    acq    	   evergreen    false    969         8+          0    107883    invoice_method 
   TABLE DATA               1   COPY acq.invoice_method (code, name) FROM stdin;
    acq    	   evergreen    false    1026         9+          0    107891    invoice_payment_method 
   TABLE DATA               9   COPY acq.invoice_payment_method (code, name) FROM stdin;
    acq    	   evergreen    false    1027   M      �*          0    106860    provider 
   TABLE DATA               �   COPY acq.provider (id, name, owner, currency_type, code, holding_tag, san, edi_default, active, prepayment_required, url, email, phone, fax_phone, default_copy_count, default_claim_policy, primary_contact) FROM stdin;
    acq    	   evergreen    false    952   j      �(          0    98993    identification_type 
   TABLE DATA               7   COPY config.identification_type (id, name) FROM stdin;
    config    	   evergreen    false    251   �      �(          0    99111    net_access_level 
   TABLE DATA               4   COPY config.net_access_level (id, name) FROM stdin;
    config    	   evergreen    false    267   �      {(          0    98776    standing 
   TABLE DATA               -   COPY config.standing (id, value) FROM stdin;
    config    	   evergreen    false    230   �      ,)          0    100762    grp_tree 
   TABLE DATA               �   COPY permission.grp_tree (id, name, parent, usergroup, perm_interval, description, application_perm, hold_priority) FROM stdin;
 
   permission    	   evergreen    false    417   %      �(          0    99824    usr 
   TABLE DATA               �  COPY actor.usr (id, card, profile, usrname, email, passwd, standing, ident_type, ident_value, ident_type2, ident_value2, net_access_level, photo_url, prefix, first_given_name, second_given_name, family_name, suffix, guardian, pref_prefix, pref_first_given_name, pref_second_given_name, pref_family_name, pref_suffix, name_keywords, name_kw_tsvector, alias, day_phone, evening_phone, other_phone, mailing_address, billing_address, home_ou, dob, active, master_account, super_user, barred, deleted, juvenile, usrgroup, claims_returned_count, credit_forward_balance, last_xact_id, alert_message, create_date, expire_date, claims_never_checked_out_count, last_update_time) FROM stdin;
    actor    	   evergreen    false    340   �      ;+          0    107901    invoice 
   TABLE DATA               �   COPY acq.invoice (id, receiver, provider, shipper, recv_date, recv_method, inv_type, inv_ident, payment_auth, payment_method, note, close_date, closed_by) FROM stdin;
    acq    	   evergreen    false    1029   m      +          0    107158    picklist 
   TABLE DATA               c   COPY acq.picklist (id, owner, creator, editor, org_unit, name, create_time, edit_time) FROM stdin;
    acq    	   evergreen    false    977   �      +          0    107216    purchase_order 
   TABLE DATA               �   COPY acq.purchase_order (id, owner, creator, editor, ordering_agency, create_time, edit_time, provider, state, order_date, name, cancel_reason, prepayment_required) FROM stdin;
    acq    	   evergreen    false    981   �      V)          0    101402    record_entry 
   TABLE DATA               �   COPY biblio.record_entry (id, creator, editor, source, quality, create_date, edit_date, active, deleted, fingerprint, tcn_source, tcn_value, marc, last_xact_id, vis_attr_vector, owner, share_depth, merge_date, merged_to) FROM stdin;
    biblio    	   evergreen    false    475   �      y(          0    98760 
   bib_source 
   TABLE DATA               X   COPY config.bib_source (id, quality, source, transcendant, can_have_copies) FROM stdin;
    config    	   evergreen    false    228         +*          0    104012    biblio_record_entry_bucket_type 
   TABLE DATA               I   COPY container.biblio_record_entry_bucket_type (code, label) FROM stdin;
 	   container    	   evergreen    false    718   z      -*          0    104024    biblio_record_entry_bucket 
   TABLE DATA               z   COPY container.biblio_record_entry_bucket (id, owner, name, btype, description, pub, owning_lib, create_time) FROM stdin;
 	   container    	   evergreen    false    720   P      �)          0    102094    import_item_attr_definition 
   TABLE DATA               p  COPY vandelay.import_item_attr_definition (id, owner, name, tag, keep, owning_lib, circ_lib, call_number, copy_number, status, location, circulate, deposit, deposit_amount, ref, holdable, price, barcode, circ_modifier, circ_as_type, alert_message, opac_visible, pub_note_title, pub_note, priv_note_title, priv_note, internal_id, stat_cat_data, parts_data) FROM stdin;
    vandelay    	   evergreen    false    535   m      �)          0    102125 	   bib_queue 
   TABLE DATA               t   COPY vandelay.bib_queue (id, owner, name, complete, match_set, queue_type, item_attr_def, match_bucket) FROM stdin;
    vandelay    	   evergreen    false    537   =      �)          0    102111    import_error 
   TABLE DATA               ;   COPY vandelay.import_error (code, description) FROM stdin;
    vandelay    	   evergreen    false    536   Z      �)          0    102143    queued_bib_record 
   TABLE DATA               �   COPY vandelay.queued_bib_record (id, create_time, import_time, purpose, marc, quality, queue, bib_source, imported_as, import_error, error_detail) FROM stdin;
    vandelay    	   evergreen    false    538   $      +          0    107304    lineitem 
   TABLE DATA               �   COPY acq.lineitem (id, creator, editor, selector, provider, purchase_order, picklist, expected_recv_time, create_time, edit_time, marc, eg_bib_id, source_label, state, cancel_reason, estimated_unit_price, claim_policy, queued_record) FROM stdin;
    acq    	   evergreen    false    985   A      =+          0    107946    invoice_entry 
   TABLE DATA               �   COPY acq.invoice_entry (id, invoice, purchase_order, lineitem, inv_item_count, phys_item_count, note, billed_per_item, cost_billed, actual_cost, amount_paid) FROM stdin;
    acq    	   evergreen    false    1031   ^      +          0    107068 
   fund_debit 
   TABLE DATA               �   COPY acq.fund_debit (id, fund, origin_amount, origin_currency_type, amount, encumbrance, debit_type, xfer_destination, create_time, invoice_entry) FROM stdin;
    acq    	   evergreen    false    971   {      �)          0    103080    copy_location 
   TABLE DATA               �   COPY asset.copy_location (id, name, owning_lib, holdable, hold_verify, opac_visible, circulate, label_prefix, label_suffix, checkin_alert, deleted, url) FROM stdin;
    asset    	   evergreen    false    633   �      �*          0    105917    circ_modifier 
   TABLE DATA               p   COPY config.circ_modifier (code, name, description, sip2_media_type, magnetic_media, avg_wait_time) FROM stdin;
    config    	   evergreen    false    881   �      +          0    107430    lineitem_detail 
   TABLE DATA               �   COPY acq.lineitem_detail (id, lineitem, fund, fund_debit, eg_copy_id, barcode, cn_label, note, collection_code, circ_modifier, owning_lib, location, recv_time, receiver, cancel_reason) FROM stdin;
    acq    	   evergreen    false    991   �      L+          0    108246    claim 
   TABLE DATA               7   COPY acq.claim (id, type, lineitem_detail) FROM stdin;
    acq    	   evergreen    false    1062   	      �*          0    106821    claim_event_type 
   TABLE DATA               [   COPY acq.claim_event_type (id, org_unit, code, description, library_initiated) FROM stdin;
    acq    	   evergreen    false    948   &      O+          0    108267    claim_event 
   TABLE DATA               N   COPY acq.claim_event (id, type, claim, event_date, creator, note) FROM stdin;
    acq    	   evergreen    false    1065   C      �+           0    0    claim_event_claim_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acq.claim_event_claim_seq', 1, false);
            acq    	   evergreen    false    1064            �+           0    0    claim_event_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('acq.claim_event_id_seq', 1, false);
            acq    	   evergreen    false    1063            �+           0    0    claim_event_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acq.claim_event_type_id_seq', 1, false);
            acq    	   evergreen    false    947            �+           0    0    claim_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('acq.claim_id_seq', 1, false);
            acq    	   evergreen    false    1061            �*          0    106840    claim_policy_action 
   TABLE DATA               U   COPY acq.claim_policy_action (id, claim_policy, action_interval, action) FROM stdin;
    acq    	   evergreen    false    950   `      �+           0    0    claim_policy_action_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('acq.claim_policy_action_id_seq', 1, false);
            acq    	   evergreen    false    949            �+           0    0    claim_policy_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acq.claim_policy_id_seq', 1, false);
            acq    	   evergreen    false    945            �+           0    0    claim_type_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('acq.claim_type_id_seq', 1, false);
            acq    	   evergreen    false    1059            �*          0    106992    funding_source 
   TABLE DATA               K   COPY acq.funding_source (id, name, owner, currency_type, code) FROM stdin;
    acq    	   evergreen    false    964   }      �*          0    107017    funding_source_credit 
   TABLE DATA               m   COPY acq.funding_source_credit (id, funding_source, amount, note, deadline_date, effective_date) FROM stdin;
    acq    	   evergreen    false    966   �      7+          0    107863    debit_attribution 
   TABLE DATA               l   COPY acq.debit_attribution (id, fund_debit, debit_amount, funding_source_credit, credit_amount) FROM stdin;
    acq    	   evergreen    false    1025   �       +          0    107582    distribution_formula 
   TABLE DATA               H   COPY acq.distribution_formula (id, owner, name, skip_count) FROM stdin;
    acq    	   evergreen    false    1002   �      $+          0    107640     distribution_formula_application 
   TABLE DATA               d   COPY acq.distribution_formula_application (id, creator, create_time, formula, lineitem) FROM stdin;
    acq    	   evergreen    false    1006   �      �+           0    0 '   distribution_formula_application_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('acq.distribution_formula_application_id_seq', 1, false);
            acq    	   evergreen    false    1005            "+          0    107601    distribution_formula_entry 
   TABLE DATA               �   COPY acq.distribution_formula_entry (id, formula, "position", item_count, owning_lib, location, fund, circ_modifier, collection_code) FROM stdin;
    acq    	   evergreen    false    1004         �+           0    0 !   distribution_formula_entry_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('acq.distribution_formula_entry_id_seq', 1, false);
            acq    	   evergreen    false    1003            �+           0    0    distribution_formula_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('acq.distribution_formula_id_seq', 1, false);
            acq    	   evergreen    false    1001            1+          0    107781    edi_attr_set 
   TABLE DATA               .   COPY acq.edi_attr_set (id, label) FROM stdin;
    acq    	   evergreen    false    1019   +      4+          0    107815    edi_account 
   TABLE DATA               �   COPY acq.edi_account (id, label, host, username, password, account, path, owner, last_activity, provider, in_dir, vendcode, vendacct, attr_set, use_attrs) FROM stdin;
    acq    	   evergreen    false    1022   �      /+          0    107769    edi_attr 
   TABLE DATA               +   COPY acq.edi_attr (key, label) FROM stdin;
    acq    	   evergreen    false    1017   �      �+           0    0    edi_attr_set_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acq.edi_attr_set_id_seq', 1000, true);
            acq    	   evergreen    false    1018            3+          0    107794    edi_attr_set_map 
   TABLE DATA               ;   COPY acq.edi_attr_set_map (id, attr_set, attr) FROM stdin;
    acq    	   evergreen    false    1021   E      �+           0    0    edi_attr_set_map_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acq.edi_attr_set_map_id_seq', 53, true);
            acq    	   evergreen    false    1020            6+          0    107837    edi_message 
   TABLE DATA               �   COPY acq.edi_message (id, account, remote_file, create_time, translate_time, process_time, error_time, status, edi, jedi, error, purchase_order, message_type) FROM stdin;
    acq    	   evergreen    false    1024   �      �+           0    0    edi_message_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('acq.edi_message_id_seq', 1, false);
            acq    	   evergreen    false    1023            �*          0    106780    exchange_rate 
   TABLE DATA               K   COPY acq.exchange_rate (id, from_currency, to_currency, ratio) FROM stdin;
    acq    	   evergreen    false    944   �      �+           0    0    exchange_rate_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acq.exchange_rate_id_seq', 2, true);
            acq    	   evergreen    false    943            �+           0    0    fiscal_calendar_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acq.fiscal_calendar_id_seq', 1, true);
            acq    	   evergreen    false    1013            .+          0    107754    fiscal_year 
   TABLE DATA               L   COPY acq.fiscal_year (id, calendar, year, year_begin, year_end) FROM stdin;
    acq    	   evergreen    false    1016   3      �+           0    0    fiscal_year_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('acq.fiscal_year_id_seq', 1, false);
            acq    	   evergreen    false    1015            +          0    107096    fund_allocation 
   TABLE DATA               f   COPY acq.fund_allocation (id, funding_source, fund, amount, allocator, note, create_time) FROM stdin;
    acq    	   evergreen    false    973   P      �+           0    0    fund_allocation_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acq.fund_allocation_id_seq', 1, false);
            acq    	   evergreen    false    972            +          0    107124    fund_allocation_percent 
   TABLE DATA               y   COPY acq.fund_allocation_percent (id, funding_source, org, fund_code, percent, allocator, note, create_time) FROM stdin;
    acq    	   evergreen    false    975   m      �+           0    0    fund_allocation_percent_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('acq.fund_allocation_percent_id_seq', 1, false);
            acq    	   evergreen    false    974            �+           0    0    fund_debit_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('acq.fund_debit_id_seq', 1, false);
            acq    	   evergreen    false    970            �+           0    0    fund_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('acq.fund_id_seq', 1, false);
            acq    	   evergreen    false    968            &+          0    107667    fund_tag 
   TABLE DATA               0   COPY acq.fund_tag (id, owner, name) FROM stdin;
    acq    	   evergreen    false    1008   �      �+           0    0    fund_tag_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('acq.fund_tag_id_seq', 1, false);
            acq    	   evergreen    false    1007            (+          0    107685    fund_tag_map 
   TABLE DATA               2   COPY acq.fund_tag_map (id, fund, tag) FROM stdin;
    acq    	   evergreen    false    1010   �      �+           0    0    fund_tag_map_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acq.fund_tag_map_id_seq', 1, false);
            acq    	   evergreen    false    1009            *+          0    107705    fund_transfer 
   TABLE DATA               �   COPY acq.fund_transfer (id, src_fund, src_amount, dest_fund, dest_amount, transfer_time, transfer_user, note, funding_source_credit) FROM stdin;
    acq    	   evergreen    false    1012   �      �+           0    0    fund_transfer_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('acq.fund_transfer_id_seq', 1, false);
            acq    	   evergreen    false    1011            �+           0    0    funding_source_credit_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('acq.funding_source_credit_id_seq', 1, false);
            acq    	   evergreen    false    965            �+           0    0    funding_source_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acq.funding_source_id_seq', 1, false);
            acq    	   evergreen    false    963            �+           0    0    invoice_entry_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('acq.invoice_entry_id_seq', 1, false);
            acq    	   evergreen    false    1030            �+           0    0    invoice_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('acq.invoice_id_seq', 1, false);
            acq    	   evergreen    false    1028            >+          0    107979    invoice_item_type 
   TABLE DATA               F   COPY acq.invoice_item_type (code, name, prorate, blanket) FROM stdin;
    acq    	   evergreen    false    1032   �      @+          0    107992    po_item 
   TABLE DATA               �   COPY acq.po_item (id, purchase_order, fund_debit, inv_item_type, title, author, note, estimated_cost, fund, target) FROM stdin;
    acq    	   evergreen    false    1034   x      B+          0    108024    invoice_item 
   TABLE DATA               �   COPY acq.invoice_item (id, invoice, purchase_order, fund_debit, inv_item_type, title, author, note, cost_billed, actual_cost, fund, amount_paid, po_item, target) FROM stdin;
    acq    	   evergreen    false    1036   �      �+           0    0    invoice_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acq.invoice_item_id_seq', 1, false);
            acq    	   evergreen    false    1035            +          0    107375    lineitem_alert_text 
   TABLE DATA               M   COPY acq.lineitem_alert_text (id, code, description, owning_lib) FROM stdin;
    acq    	   evergreen    false    987   �      �+           0    0    lineitem_alert_text_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('acq.lineitem_alert_text_id_seq', 1, false);
            acq    	   evergreen    false    986            +          0    107562    lineitem_attr 
   TABLE DATA               m   COPY acq.lineitem_attr (id, definition, lineitem, attr_type, attr_name, attr_value, order_ident) FROM stdin;
    acq    	   evergreen    false    1000   �      +          0    107483    lineitem_attr_definition 
   TABLE DATA               U   COPY acq.lineitem_attr_definition (id, code, description, remove, ident) FROM stdin;
    acq    	   evergreen    false    993   �      �+           0    0    lineitem_attr_definition_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('acq.lineitem_attr_definition_id_seq', 13, true);
            acq    	   evergreen    false    992            �+           0    0    lineitem_attr_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('acq.lineitem_attr_id_seq', 1, false);
            acq    	   evergreen    false    999            �+           0    0    lineitem_detail_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('acq.lineitem_detail_id_seq', 1, false);
            acq    	   evergreen    false    990            +          0    107521 "   lineitem_generated_attr_definition 
   TABLE DATA               f   COPY acq.lineitem_generated_attr_definition (id, code, description, remove, ident, xpath) FROM stdin;
    acq    	   evergreen    false    996   	      �+           0    0    lineitem_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('acq.lineitem_id_seq', 1, false);
            acq    	   evergreen    false    984            +          0    107549    lineitem_local_attr_definition 
   TABLE DATA               [   COPY acq.lineitem_local_attr_definition (id, code, description, remove, ident) FROM stdin;
    acq    	   evergreen    false    998   &      +          0    107494    lineitem_marc_attr_definition 
   TABLE DATA               a   COPY acq.lineitem_marc_attr_definition (id, code, description, remove, ident, xpath) FROM stdin;
    acq    	   evergreen    false    994   _      +          0    107393    lineitem_note 
   TABLE DATA               }   COPY acq.lineitem_note (id, lineitem, creator, editor, create_time, edit_time, value, alert_text, vendor_public) FROM stdin;
    acq    	   evergreen    false    989   �      �+           0    0    lineitem_note_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('acq.lineitem_note_id_seq', 1, false);
            acq    	   evergreen    false    988            +          0    107505 !   lineitem_provider_attr_definition 
   TABLE DATA               o   COPY acq.lineitem_provider_attr_definition (id, code, description, remove, ident, xpath, provider) FROM stdin;
    acq    	   evergreen    false    995   �      +          0    107532    lineitem_usr_attr_definition 
   TABLE DATA               ^   COPY acq.lineitem_usr_attr_definition (id, code, description, remove, ident, usr) FROM stdin;
    acq    	   evergreen    false    997   �      �+           0    0    picklist_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('acq.picklist_id_seq', 1, false);
            acq    	   evergreen    false    976            �+           0    0    po_item_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('acq.po_item_id_seq', 1, false);
            acq    	   evergreen    false    1033            +          0    107272    po_note 
   TABLE DATA               q   COPY acq.po_note (id, purchase_order, creator, editor, create_time, edit_time, value, vendor_public) FROM stdin;
    acq    	   evergreen    false    983          �+           0    0    po_note_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('acq.po_note_id_seq', 1, false);
            acq    	   evergreen    false    982            �*          0    106911    provider_address 
   TABLE DATA               �   COPY acq.provider_address (id, valid, address_type, provider, street1, street2, city, county, state, country, post_code, fax_phone) FROM stdin;
    acq    	   evergreen    false    956          �+           0    0    provider_address_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acq.provider_address_id_seq', 1, false);
            acq    	   evergreen    false    955            �*          0    106928    provider_contact 
   TABLE DATA               O   COPY acq.provider_contact (id, provider, name, role, email, phone) FROM stdin;
    acq    	   evergreen    false    958   ;       �*          0    106944    provider_contact_address 
   TABLE DATA               �   COPY acq.provider_contact_address (id, valid, address_type, contact, street1, street2, city, county, state, country, post_code, fax_phone) FROM stdin;
    acq    	   evergreen    false    960   X       �+           0    0    provider_contact_address_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('acq.provider_contact_address_id_seq', 1, false);
            acq    	   evergreen    false    959            �+           0    0    provider_contact_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acq.provider_contact_id_seq', 1, false);
            acq    	   evergreen    false    957            �*          0    106893    provider_holding_subfield_map 
   TABLE DATA               R   COPY acq.provider_holding_subfield_map (id, provider, name, subfield) FROM stdin;
    acq    	   evergreen    false    954   u       �+           0    0 $   provider_holding_subfield_map_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('acq.provider_holding_subfield_map_id_seq', 1, false);
            acq    	   evergreen    false    953            �+           0    0    provider_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('acq.provider_id_seq', 1, false);
            acq    	   evergreen    false    951            �*          0    106961    provider_note 
   TABLE DATA               b   COPY acq.provider_note (id, provider, creator, editor, create_time, edit_time, value) FROM stdin;
    acq    	   evergreen    false    962   �       �+           0    0    provider_note_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('acq.provider_note_id_seq', 1, false);
            acq    	   evergreen    false    961            �+           0    0    purchase_order_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('acq.purchase_order_id_seq', 1, false);
            acq    	   evergreen    false    980            �)          0    103352    call_number_class 
   TABLE DATA               G   COPY asset.call_number_class (id, name, normalizer, field) FROM stdin;
    asset    	   evergreen    false    662   �       �)          0    103370    call_number_prefix 
   TABLE DATA               Q   COPY asset.call_number_prefix (id, owning_lib, label, label_sortkey) FROM stdin;
    asset    	   evergreen    false    664   R!      �)          0    103389    call_number_suffix 
   TABLE DATA               Q   COPY asset.call_number_suffix (id, owning_lib, label, label_sortkey) FROM stdin;
    asset    	   evergreen    false    666   v!      �)          0    103408    call_number 
   TABLE DATA               �   COPY asset.call_number (id, creator, create_date, editor, edit_date, record, owning_lib, label, deleted, prefix, suffix, label_class, label_sortkey) FROM stdin;
    asset    	   evergreen    false    668   �!      �(          0    99092    copy_status 
   TABLE DATA               �   COPY config.copy_status (id, name, holdable, opac_visible, copy_active, restrict_copy_delete, is_available, hopeless_prone) FROM stdin;
    config    	   evergreen    false    265   �!      �*          0    106239    floating_group 
   TABLE DATA               :   COPY config.floating_group (id, name, manual) FROM stdin;
    config    	   evergreen    false    904   �"       *          0    103484    copy_template 
   TABLE DATA               7  COPY asset.copy_template (id, owning_lib, creator, editor, create_date, edit_date, name, circ_lib, status, location, loan_duration, fine_level, age_protect, circulate, deposit, ref, holdable, deposit_amount, price, circ_modifier, circ_as_type, alert_message, opac_visible, floating, mint_condition) FROM stdin;
    asset    	   evergreen    false    674   %#      �)          0    103340    uri 
   TABLE DATA               F   COPY asset.uri (id, href, label, use_restriction, active) FROM stdin;
    asset    	   evergreen    false    660   B#      �*          0    106338    subscription 
   TABLE DATA               p   COPY serial.subscription (id, owning_lib, start_date, end_date, record_entry, expected_date_offset) FROM stdin;
    serial    	   evergreen    false    911   _#      �*          0    106384    caption_and_pattern 
   TABLE DATA               �   COPY serial.caption_and_pattern (id, subscription, type, create_date, start_date, end_date, active, pattern_code, enum_1, enum_2, enum_3, enum_4, enum_5, enum_6, chron_1, chron_2, chron_3, chron_4, chron_5) FROM stdin;
    serial    	   evergreen    false    915   |#      �*          0    106303    record_entry 
   TABLE DATA               �   COPY serial.record_entry (id, record, owning_lib, creator, editor, source, create_date, edit_date, active, deleted, marc, last_xact_id) FROM stdin;
    serial    	   evergreen    false    909   �#      �*          0    106405    distribution 
   TABLE DATA               �   COPY serial.distribution (id, record_entry, summary_method, subscription, holding_lib, label, display_grouping, receive_call_number, receive_unit_template, bind_call_number, bind_unit_template, unit_label_prefix, unit_label_suffix) FROM stdin;
    serial    	   evergreen    false    917   �#      �*          0    106527    issuance 
   TABLE DATA               �   COPY serial.issuance (id, creator, editor, create_date, edit_date, subscription, label, date_published, caption_and_pattern, holding_code, holding_type, holding_link_id) FROM stdin;
    serial    	   evergreen    false    925   �#      �*          0    106482    stream 
   TABLE DATA               A   COPY serial.stream (id, distribution, routing_label) FROM stdin;
    serial    	   evergreen    false    921   �#      �*          0    106564    unit 
   TABLE DATA               �  COPY serial.unit (id, circ_lib, creator, call_number, editor, create_date, edit_date, copy_number, status, location, loan_duration, fine_level, age_protect, circulate, deposit, ref, holdable, deposit_amount, price, barcode, circ_modifier, circ_as_type, dummy_title, dummy_author, alert_message, opac_visible, deleted, floating, dummy_isbn, status_changed_time, active_date, mint_condition, cost, sort_key, detailed_contents, summary_contents) FROM stdin;
    serial    	   evergreen    false    926   $      �*          0    106598    item 
   TABLE DATA               �   COPY serial.item (id, creator, editor, create_date, edit_date, issuance, stream, unit, uri, date_expected, date_received, status, shadowed) FROM stdin;
    serial    	   evergreen    false    928   *$      Q+          0    108296    serial_claim 
   TABLE DATA               3   COPY acq.serial_claim (id, type, item) FROM stdin;
    acq    	   evergreen    false    1067   G$      T+          0    108317    serial_claim_event 
   TABLE DATA               U   COPY acq.serial_claim_event (id, type, claim, event_date, creator, note) FROM stdin;
    acq    	   evergreen    false    1070   d$      �+           0    0    serial_claim_event_claim_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('acq.serial_claim_event_claim_seq', 1, false);
            acq    	   evergreen    false    1069            �+           0    0    serial_claim_event_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('acq.serial_claim_event_id_seq', 1, false);
            acq    	   evergreen    false    1068            �+           0    0    serial_claim_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acq.serial_claim_id_seq', 1, false);
            acq    	   evergreen    false    1066            D+          0    108068    user_request_type 
   TABLE DATA               3   COPY acq.user_request_type (id, label) FROM stdin;
    acq    	   evergreen    false    1038   �$      H+          0    108092    user_request 
   TABLE DATA               A  COPY acq.user_request (id, usr, hold, pickup_lib, holdable_formats, phone_notify, email_notify, lineitem, eg_bib, request_date, need_before, max_fee, request_type, isxn, upc, title, volume, author, article_title, article_pages, publisher, location, pubdate, mentioned, other_info, cancel_reason, cancel_time) FROM stdin;
    acq    	   evergreen    false    1042   �$      �+           0    0    user_request_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('acq.user_request_id_seq', 1, false);
            acq    	   evergreen    false    1041            F+          0    108081    user_request_status_type 
   TABLE DATA               :   COPY acq.user_request_status_type (id, label) FROM stdin;
    acq    	   evergreen    false    1040   �$      �+           0    0    user_request_status_type_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('acq.user_request_status_type_id_seq', 100, true);
            acq    	   evergreen    false    1039            �+           0    0    user_request_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('acq.user_request_type_id_seq', 7, true);
            acq    	   evergreen    false    1037            v*          0    105083    aged_circulation 
   TABLE DATA               z  COPY action.aged_circulation (usr_post_code, usr_home_ou, usr_profile, usr_birth_year, copy_call_number, copy_owning_lib, copy_circ_lib, copy_bib_record, id, xact_start, xact_finish, unrecovered, target_copy, circ_lib, circ_staff, checkin_staff, checkin_lib, renewal_remaining, grace_period, due_date, stop_fines_time, checkin_time, create_time, duration, fine_interval, recurring_fine, max_fine, phone_renewal, desk_renewal, opac_renewal, duration_rule, recurring_fine_rule, max_fine_rule, stop_fines, workstation, checkin_workstation, copy_location, checkin_scan_time, auto_renewal, auto_renewal_remaining, parent_circ) FROM stdin;
    action    	   evergreen    false    813   a%      �*          0    105371    aged_hold_request 
   TABLE DATA               :  COPY action.aged_hold_request (usr_post_code, usr_home_ou, usr_profile, usr_birth_year, staff_placed, id, request_time, capture_time, fulfillment_time, checkin_time, return_time, prev_check_time, expire_time, cancel_time, cancel_cause, cancel_note, target, current_copy, fulfillment_staff, fulfillment_lib, request_lib, selection_ou, selection_depth, pickup_lib, hold_type, holdable_formats, phone_notify, email_notify, sms_notify, frozen, thaw_date, shelf_time, cut_in_line, mint_condition, shelf_expire_time, current_shelf_lib, behind_desk, hopeless_date) FROM stdin;
    action    	   evergreen    false    837   ~%      r*          0    105004    archive_actor_stat_cat 
   TABLE DATA               K   COPY action.archive_actor_stat_cat (id, xact, stat_cat, value) FROM stdin;
    action    	   evergreen    false    809   �%      �+           0    0    archive_actor_stat_cat_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('action.archive_actor_stat_cat_id_seq', 1, false);
            action    	   evergreen    false    808            t*          0    105015    archive_asset_stat_cat 
   TABLE DATA               K   COPY action.archive_asset_stat_cat (id, xact, stat_cat, value) FROM stdin;
    action    	   evergreen    false    811   �%      �+           0    0    archive_asset_stat_cat_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('action.archive_asset_stat_cat_id_seq', 1, false);
            action    	   evergreen    false    810            )          0    100247    workstation 
   TABLE DATA               :   COPY actor.workstation (id, name, owning_lib) FROM stdin;
    actor    	   evergreen    false    372   �%      u*          0    105024    circulation 
   TABLE DATA               �  COPY action.circulation (id, usr, xact_start, xact_finish, unrecovered, target_copy, circ_lib, circ_staff, checkin_staff, checkin_lib, renewal_remaining, grace_period, due_date, stop_fines_time, checkin_time, create_time, duration, fine_interval, recurring_fine, max_fine, phone_renewal, desk_renewal, opac_renewal, duration_rule, recurring_fine_rule, max_fine_rule, stop_fines, workstation, checkin_workstation, copy_location, checkin_scan_time, auto_renewal, auto_renewal_remaining, parent_circ) FROM stdin;
    action    	   evergreen    false    812   �%      �*          0    106008    circ_limit_group 
   TABLE DATA               A   COPY config.circ_limit_group (id, name, description) FROM stdin;
    config    	   evergreen    false    885   &      �*          0    106125    circulation_limit_group_map 
   TABLE DATA               H   COPY action.circulation_limit_group_map (circ, limit_group) FROM stdin;
    action    	   evergreen    false    896   ,&      �*          0    105528    curbside 
   TABLE DATA               y   COPY action.curbside (id, patron, org, slot, staged, stage_staff, arrival, delivered, delivery_staff, notes) FROM stdin;
    action    	   evergreen    false    850   I&      �+           0    0    curbside_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('action.curbside_id_seq', 1, false);
            action    	   evergreen    false    849            �*          0    105777    emergency_closing 
   TABLE DATA               }   COPY action.emergency_closing (id, creator, create_time, process_start_time, process_end_time, last_update_time) FROM stdin;
    action    	   evergreen    false    866   f&      �*          0    105796    emergency_closing_circulation 
   TABLE DATA               |   COPY action.emergency_closing_circulation (id, emergency_closing, circulation, original_due_date, process_time) FROM stdin;
    action    	   evergreen    false    868   �&      �+           0    0 $   emergency_closing_circulation_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('action.emergency_closing_circulation_id_seq', 1, false);
            action    	   evergreen    false    867            x*          0    105126    hold_request_cancel_cause 
   TABLE DATA               >   COPY action.hold_request_cancel_cause (id, label) FROM stdin;
    action    	   evergreen    false    819   �&      �(          0    99736 	   hold_type 
   TABLE DATA               ?   COPY config.hold_type (id, hold_type, description) FROM stdin;
    config    	   evergreen    false    333   '      �(          0    99554    sms_carrier 
   TABLE DATA               N   COPY config.sms_carrier (id, region, name, email_gateway, active) FROM stdin;
    config    	   evergreen    false    315   �'      z*          0    105139    hold_request 
   TABLE DATA                 COPY action.hold_request (id, request_time, capture_time, fulfillment_time, checkin_time, return_time, prev_check_time, expire_time, cancel_time, cancel_cause, cancel_note, target, current_copy, fulfillment_staff, fulfillment_lib, request_lib, requestor, usr, selection_ou, selection_depth, pickup_lib, hold_type, holdable_formats, phone_notify, email_notify, sms_notify, sms_carrier, frozen, thaw_date, shelf_time, cut_in_line, mint_condition, shelf_expire_time, current_shelf_lib, behind_desk, hopeless_date, acq_request) FROM stdin;
    action    	   evergreen    false    821   �,      �*          0    105836    emergency_closing_hold 
   TABLE DATA               w   COPY action.emergency_closing_hold (id, emergency_closing, hold, original_shelf_expire_time, process_time) FROM stdin;
    action    	   evergreen    false    872   �,      �+           0    0    emergency_closing_hold_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('action.emergency_closing_hold_id_seq', 1, false);
            action    	   evergreen    false    871            �+           0    0    emergency_closing_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('action.emergency_closing_id_seq', 1, false);
            action    	   evergreen    false    865            �*          0    105560    resource_type 
   TABLE DATA               �   COPY booking.resource_type (id, name, elbow_room, fine_interval, fine_amount, max_fine, owner, catalog_item, transferable, record) FROM stdin;
    booking    	   evergreen    false    852   �,      �*          0    105586    resource 
   TABLE DATA               j   COPY booking.resource (id, owner, type, overbook, barcode, deposit, deposit_amount, user_fee) FROM stdin;
    booking    	   evergreen    false    854   -      �*          0    105683    reservation 
   TABLE DATA               [  COPY booking.reservation (id, usr, xact_start, xact_finish, unrecovered, request_time, start_time, end_time, capture_time, cancel_time, pickup_time, return_time, booking_interval, fine_interval, fine_amount, max_fine, target_resource_type, target_resource, current_resource, request_lib, pickup_lib, capture_staff, email_notify, note) FROM stdin;
    booking    	   evergreen    false    861   5-      �*          0    105816    emergency_closing_reservation 
   TABLE DATA               |   COPY action.emergency_closing_reservation (id, emergency_closing, reservation, original_end_time, process_time) FROM stdin;
    action    	   evergreen    false    870   R-      �+           0    0 $   emergency_closing_reservation_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('action.emergency_closing_reservation_id_seq', 1, false);
            action    	   evergreen    false    869            �*          0    105399    fieldset_group 
   TABLE DATA               �   COPY action.fieldset_group (id, name, create_time, complete_time, container, container_type, can_rollback, rollback_group, rollback_time, creator, owning_lib) FROM stdin;
    action    	   evergreen    false    840   o-      <)          0    100961    stored_query 
   TABLE DATA               �   COPY query.stored_query (id, type, use_all, use_distinct, from_clause, where_clause, having_clause, limit_count, offset_count) FROM stdin;
    query    	   evergreen    false    433   �-      �*          0    105427    fieldset 
   TABLE DATA               �   COPY action.fieldset (id, fieldset_group, owner, owning_lib, status, creation_time, scheduled_time, applied_time, classname, name, error_msg, stored_query, pkey_value) FROM stdin;
    action    	   evergreen    false    842   �-      �*          0    105465    fieldset_col_val 
   TABLE DATA               B   COPY action.fieldset_col_val (id, fieldset, col, val) FROM stdin;
    action    	   evergreen    false    844   �-      �+           0    0    fieldset_col_val_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('action.fieldset_col_val_id_seq', 1, false);
            action    	   evergreen    false    843            �+           0    0    fieldset_group_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('action.fieldset_group_id_seq', 1, false);
            action    	   evergreen    false    839            �+           0    0    fieldset_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('action.fieldset_id_seq', 1, false);
            action    	   evergreen    false    841            �*          0    105267    hold_copy_map 
   TABLE DATA               I   COPY action.hold_copy_map (id, hold, target_copy, proximity) FROM stdin;
    action    	   evergreen    false    827   �-      �+           0    0    hold_copy_map_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('action.hold_copy_map_id_seq', 1, false);
            action    	   evergreen    false    826            ~*          0    105243    hold_notification 
   TABLE DATA               ^   COPY action.hold_notification (id, hold, notify_staff, notify_time, method, note) FROM stdin;
    action    	   evergreen    false    825   .      �+           0    0    hold_notification_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('action.hold_notification_id_seq', 1, false);
            action    	   evergreen    false    824            �+           0    0     hold_request_cancel_cause_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('action.hold_request_cancel_cause_id_seq', 100, true);
            action    	   evergreen    false    818            �+           0    0    hold_request_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('action.hold_request_id_seq', 1, false);
            action    	   evergreen    false    820            |*          0    105223    hold_request_note 
   TABLE DATA               T   COPY action.hold_request_note (id, hold, title, body, slip, pub, staff) FROM stdin;
    action    	   evergreen    false    823   2.      �+           0    0    hold_request_note_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('action.hold_request_note_id_seq', 1, false);
            action    	   evergreen    false    822            �*          0    105326    hold_transit_copy 
   TABLE DATA               �   COPY action.hold_transit_copy (id, source_send_time, dest_recv_time, target_copy, source, dest, prev_hop, copy_status, persistant_transfer, prev_dest, cancel_time, hold) FROM stdin;
    action    	   evergreen    false    830   O.      c*          0    104832    in_house_use 
   TABLE DATA               X   COPY action.in_house_use (id, item, staff, workstation, org_unit, use_time) FROM stdin;
    action    	   evergreen    false    794   l.      �+           0    0    in_house_use_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('action.in_house_use_id_seq', 1, false);
            action    	   evergreen    false    793            �(          0    98978    non_cataloged_type 
   TABLE DATA               [   COPY config.non_cataloged_type (id, owning_lib, name, circ_duration, in_house) FROM stdin;
    config    	   evergreen    false    249   �.      g*          0    104889    non_cat_in_house_use 
   TABLE DATA               e   COPY action.non_cat_in_house_use (id, item_type, staff, workstation, org_unit, use_time) FROM stdin;
    action    	   evergreen    false    798   �.      �+           0    0    non_cat_in_house_use_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('action.non_cat_in_house_use_id_seq', 1, false);
            action    	   evergreen    false    797            e*          0    104858    non_cataloged_circulation 
   TABLE DATA               f   COPY action.non_cataloged_circulation (id, patron, staff, circ_lib, item_type, circ_time) FROM stdin;
    action    	   evergreen    false    796   �.      �+           0    0     non_cataloged_circulation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('action.non_cataloged_circulation_id_seq', 1, false);
            action    	   evergreen    false    795            �*          0    105753    reservation_transit_copy 
   TABLE DATA               �   COPY action.reservation_transit_copy (id, source_send_time, dest_recv_time, target_copy, source, dest, prev_hop, copy_status, persistant_transfer, prev_dest, cancel_time, reservation) FROM stdin;
    action    	   evergreen    false    864   �.      i*          0    104920    survey 
   TABLE DATA               w   COPY action.survey (id, owner, start_date, end_date, usr_summary, opac, poll, required, name, description) FROM stdin;
    action    	   evergreen    false    800   /      k*          0    104943    survey_question 
   TABLE DATA               ?   COPY action.survey_question (id, survey, question) FROM stdin;
    action    	   evergreen    false    802   7/      m*          0    104959    survey_answer 
   TABLE DATA               =   COPY action.survey_answer (id, question, answer) FROM stdin;
    action    	   evergreen    false    804   T/      �+           0    0    survey_answer_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('action.survey_answer_id_seq', 1, false);
            action    	   evergreen    false    803            �+           0    0    survey_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('action.survey_id_seq', 1, false);
            action    	   evergreen    false    799            �+           0    0    survey_question_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('action.survey_question_id_seq', 1, false);
            action    	   evergreen    false    801            p*          0    104977    survey_response 
   TABLE DATA               |   COPY action.survey_response (id, response_group_id, usr, survey, question, answer, answer_date, effective_date) FROM stdin;
    action    	   evergreen    false    807   q/      �+           0    0    survey_response_group_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('action.survey_response_group_id_seq', 1, false);
            action    	   evergreen    false    805            �+           0    0    survey_response_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('action.survey_response_id_seq', 1, false);
            action    	   evergreen    false    806            �*          0    105287    transit_copy 
   TABLE DATA               �   COPY action.transit_copy (id, source_send_time, dest_recv_time, target_copy, source, dest, prev_hop, copy_status, persistant_transfer, prev_dest, cancel_time) FROM stdin;
    action    	   evergreen    false    829   �/      �+           0    0    transit_copy_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('action.transit_copy_id_seq', 1, false);
            action    	   evergreen    false    828            �*          0    105346    unfulfilled_hold_list 
   TABLE DATA               \   COPY action.unfulfilled_hold_list (id, current_copy, hold, circ_lib, fail_time) FROM stdin;
    action    	   evergreen    false    832   �/      �+           0    0    unfulfilled_hold_list_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('action.unfulfilled_hold_list_id_seq', 1, false);
            action    	   evergreen    false    831            �*          0    105499    usr_circ_history 
   TABLE DATA               q   COPY action.usr_circ_history (id, usr, xact_start, target_copy, due_date, checkin_time, source_circ) FROM stdin;
    action    	   evergreen    false    847   �/      �+           0    0    usr_circ_history_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('action.usr_circ_history_id_seq', 1, false);
            action    	   evergreen    false    846            d+          0    108657    cleanup 
   TABLE DATA               >   COPY action_trigger.cleanup (module, description) FROM stdin;
    action_trigger    	   evergreen    false    1096   �/      a+          0    108633 	   collector 
   TABLE DATA               @   COPY action_trigger.collector (module, description) FROM stdin;
    action_trigger    	   evergreen    false    1093   �0      `+          0    108624    hook 
   TABLE DATA               L   COPY action_trigger.hook (key, core_type, description, passive) FROM stdin;
    action_trigger    	   evergreen    false    1092   Q1      c+          0    108649    reactor 
   TABLE DATA               >   COPY action_trigger.reactor (module, description) FROM stdin;
    action_trigger    	   evergreen    false    1095   l9      b+          0    108641 	   validator 
   TABLE DATA               @   COPY action_trigger.validator (module, description) FROM stdin;
    action_trigger    	   evergreen    false    1094   �<      �(          0    99287    settings_group 
   TABLE DATA               5   COPY config.settings_group (name, label) FROM stdin;
    config    	   evergreen    false    288   {?      �(          0    99315    usr_setting_type 
   TABLE DATA               x   COPY config.usr_setting_type (name, opac_visible, label, description, grp, datatype, fm_class, reg_default) FROM stdin;
    config    	   evergreen    false    290   �@      f+          0    108667    event_definition 
   TABLE DATA               P  COPY action_trigger.event_definition (id, active, owner, name, hook, validator, reactor, cleanup_success, cleanup_failure, delay, max_delay, repeat_delay, usr_field, opt_in_setting, delay_field, group_field, template, granularity, message_template, message_usr_path, message_library_path, message_title, retention_interval) FROM stdin;
    action_trigger    	   evergreen    false    1098   -D      h+          0    108721    environment 
   TABLE DATA               T   COPY action_trigger.environment (id, event_def, path, collector, label) FROM stdin;
    action_trigger    	   evergreen    false    1100   �      �+           0    0    environment_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('action_trigger.environment_id_seq', 243, true);
            action_trigger    	   evergreen    false    1099            j+          0    108745    event_output 
   TABLE DATA               O   COPY action_trigger.event_output (id, create_time, is_error, data) FROM stdin;
    action_trigger    	   evergreen    false    1102   ��      l+          0    108758    event 
   TABLE DATA               �   COPY action_trigger.event (id, target, event_def, add_time, run_time, start_time, update_time, complete_time, update_process, state, user_data, template_output, error_output, async_output) FROM stdin;
    action_trigger    	   evergreen    false    1104   ��      p+          0    108816    event_def_group 
   TABLE DATA               P   COPY action_trigger.event_def_group (id, owner, hook, active, name) FROM stdin;
    action_trigger    	   evergreen    false    1108   ֍      �+           0    0    event_def_group_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('action_trigger.event_def_group_id_seq', 100, true);
            action_trigger    	   evergreen    false    1107            r+          0    108838    event_def_group_member 
   TABLE DATA               p   COPY action_trigger.event_def_group_member (id, grp, event_def, sortable, holdings, external, name) FROM stdin;
    action_trigger    	   evergreen    false    1110   3�      �+           0    0    event_def_group_member_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('action_trigger.event_def_group_member_id_seq', 4, true);
            action_trigger    	   evergreen    false    1109            �+           0    0    event_definition_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('action_trigger.event_definition_id_seq', 117, true);
            action_trigger    	   evergreen    false    1097            �+           0    0    event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('action_trigger.event_id_seq', 1, false);
            action_trigger    	   evergreen    false    1103            �+           0    0    event_output_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('action_trigger.event_output_id_seq', 1, false);
            action_trigger    	   evergreen    false    1101            n+          0    108798    event_params 
   TABLE DATA               K   COPY action_trigger.event_params (id, event_def, param, value) FROM stdin;
    action_trigger    	   evergreen    false    1106   x�      �+           0    0    event_params_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('action_trigger.event_params_id_seq', 9, true);
            action_trigger    	   evergreen    false    1105            )          0    100455    address_alert 
   TABLE DATA               �   COPY actor.address_alert (id, owner, active, match_all, alert_message, street1, street2, city, county, state, country, post_code, mailing_address, billing_address) FROM stdin;
    actor    	   evergreen    false    388   �      �+           0    0    address_alert_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('actor.address_alert_id_seq', 1, false);
            actor    	   evergreen    false    387            �(          0    100022    card 
   TABLE DATA               7   COPY actor.card (id, usr, barcode, active) FROM stdin;
    actor    	   evergreen    false    353   �      �+           0    0    card_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('actor.card_id_seq', 1, true);
            actor    	   evergreen    false    352            *          0    103627    copy_alert_type 
   TABLE DATA               �   COPY config.copy_alert_type (id, scope_org, active, name, state, event, in_renew, invert_location, at_circ, at_owning, next_status) FROM stdin;
    config    	   evergreen    false    682   L�      
*          0    103647    copy_alert_suppress 
   TABLE DATA               A   COPY actor.copy_alert_suppress (id, org, alert_type) FROM stdin;
    actor    	   evergreen    false    684   ؐ      �+           0    0    copy_alert_suppress_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('actor.copy_alert_suppress_id_seq', 1, false);
            actor    	   evergreen    false    683            �(          0    100203    hours_of_operation 
   TABLE DATA               �   COPY actor.hours_of_operation (id, dow_0_open, dow_0_close, dow_1_open, dow_1_close, dow_2_open, dow_2_close, dow_3_open, dow_3_close, dow_4_open, dow_4_close, dow_5_open, dow_5_close, dow_6_open, dow_6_close) FROM stdin;
    actor    	   evergreen    false    368   ��      )          0    100379    org_address 
   TABLE DATA               �   COPY actor.org_address (id, valid, address_type, org_unit, street1, street2, city, county, state, country, post_code, san) FROM stdin;
    actor    	   evergreen    false    382   �      �+           0    0    org_address_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('actor.org_address_id_seq', 1, false);
            actor    	   evergreen    false    381            �(          0    100097 	   org_lasso 
   TABLE DATA               ,   COPY actor.org_lasso (id, name) FROM stdin;
    actor    	   evergreen    false    359   /�      �+           0    0    org_lasso_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('actor.org_lasso_id_seq', 1, false);
            actor    	   evergreen    false    358            �(          0    100110    org_lasso_map 
   TABLE DATA               ;   COPY actor.org_lasso_map (id, lasso, org_unit) FROM stdin;
    actor    	   evergreen    false    361   L�      �+           0    0    org_lasso_map_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('actor.org_lasso_map_id_seq', 1, false);
            actor    	   evergreen    false    360            �(          0    100229    org_unit_closed 
   TABLE DATA               ~   COPY actor.org_unit_closed (id, org_unit, close_start, close_end, full_day, multi_day, reason, emergency_closing) FROM stdin;
    actor    	   evergreen    false    370   i�      �+           0    0    org_unit_closed_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('actor.org_unit_closed_id_seq', 1, false);
            actor    	   evergreen    false    369            )          0    100529    org_unit_custom_tree 
   TABLE DATA               B   COPY actor.org_unit_custom_tree (id, active, purpose) FROM stdin;
    actor    	   evergreen    false    394   ��      �+           0    0    org_unit_custom_tree_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('actor.org_unit_custom_tree_id_seq', 1, false);
            actor    	   evergreen    false    393            )          0    100541    org_unit_custom_tree_node 
   TABLE DATA               b   COPY actor.org_unit_custom_tree_node (id, tree, org_unit, parent_node, sibling_order) FROM stdin;
    actor    	   evergreen    false    396   ��      �+           0    0     org_unit_custom_tree_node_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('actor.org_unit_custom_tree_node_id_seq', 1, false);
            actor    	   evergreen    false    395            �+           0    0    org_unit_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('actor.org_unit_id_seq', 100, true);
            actor    	   evergreen    false    356            �(          0    100130    org_unit_proximity 
   TABLE DATA               G   COPY actor.org_unit_proximity (id, from_org, to_org, prox) FROM stdin;
    actor    	   evergreen    false    363   ��      �(          0    100164    org_unit_proximity_adjustment 
   TABLE DATA               �   COPY actor.org_unit_proximity_adjustment (id, item_circ_lib, item_owning_lib, copy_location, hold_pickup_lib, hold_request_lib, pos, absolute_adjustment, prox_adjustment, circ_mod) FROM stdin;
    actor    	   evergreen    false    367   �      �+           0    0 $   org_unit_proximity_adjustment_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('actor.org_unit_proximity_adjustment_id_seq', 1, false);
            actor    	   evergreen    false    366            �+           0    0    org_unit_proximity_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('actor.org_unit_proximity_id_seq', 1, true);
            actor    	   evergreen    false    362            *)          0    100747 	   perm_list 
   TABLE DATA               >   COPY permission.perm_list (id, code, description) FROM stdin;
 
   permission    	   evergreen    false    415    �      �(          0    99297    org_unit_setting_type 
   TABLE DATA               z   COPY config.org_unit_setting_type (name, label, grp, description, datatype, fm_class, view_perm, update_perm) FROM stdin;
    config    	   evergreen    false    289   3�      )          0    100297    org_unit_setting 
   TABLE DATA               D   COPY actor.org_unit_setting (id, org_unit, name, value) FROM stdin;
    actor    	   evergreen    false    376   ,       ,           0    0    org_unit_setting_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('actor.org_unit_setting_id_seq', 14, true);
            actor    	   evergreen    false    375            ,           0    0    org_unit_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('actor.org_unit_type_id_seq', 100, true);
            actor    	   evergreen    false    354            ")          0    100651    passwd_type 
   TABLE DATA               V   COPY actor.passwd_type (code, name, login, regex, crypt_algo, iter_count) FROM stdin;
    actor    	   evergreen    false    406   c      $)          0    100665    passwd 
   TABLE DATA               [   COPY actor.passwd (id, usr, salt, passwd, passwd_type, create_date, edit_date) FROM stdin;
    actor    	   evergreen    false    408   �      ,           0    0    passwd_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('actor.passwd_id_seq', 1, false);
            actor    	   evergreen    false    407            )          0    100578    search_filter_group 
   TABLE DATA               Q   COPY actor.search_filter_group (id, owner, code, label, create_date) FROM stdin;
    actor    	   evergreen    false    400   �      )          0    100567    search_query 
   TABLE DATA               <   COPY actor.search_query (id, label, query_text) FROM stdin;
    actor    	   evergreen    false    398         )          0    100599    search_filter_group_entry 
   TABLE DATA               G   COPY actor.search_filter_group_entry (id, grp, pos, query) FROM stdin;
    actor    	   evergreen    false    402   �      ,           0    0     search_filter_group_entry_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('actor.search_filter_group_entry_id_seq', 3, true);
            actor    	   evergreen    false    401            ,           0    0    search_filter_group_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('actor.search_filter_group_id_seq', 1, true);
            actor    	   evergreen    false    399            ,           0    0    search_query_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('actor.search_query_id_seq', 1, false);
            actor    	   evergreen    false    397            �(          0    99959    stat_cat_sip_fields 
   TABLE DATA               C   COPY actor.stat_cat_sip_fields (field, name, one_only) FROM stdin;
    actor    	   evergreen    false    345   �      �(          0    99970    stat_cat 
   TABLE DATA               �   COPY actor.stat_cat (id, owner, name, opac_visible, usr_summary, sip_field, sip_format, checkout_archive, required, allow_freetext) FROM stdin;
    actor    	   evergreen    false    347   �      �(          0    99993    stat_cat_entry 
   TABLE DATA               C   COPY actor.stat_cat_entry (id, stat_cat, owner, value) FROM stdin;
    actor    	   evergreen    false    349   �      �(          0    100139    stat_cat_entry_default 
   TABLE DATA               T   COPY actor.stat_cat_entry_default (id, stat_cat_entry, stat_cat, owner) FROM stdin;
    actor    	   evergreen    false    365         ,           0    0    stat_cat_entry_default_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('actor.stat_cat_entry_default_id_seq', 1, false);
            actor    	   evergreen    false    364            ,           0    0    stat_cat_entry_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('actor.stat_cat_entry_id_seq', 1, false);
            actor    	   evergreen    false    348            �(          0    100006    stat_cat_entry_usr_map 
   TABLE DATA               Y   COPY actor.stat_cat_entry_usr_map (id, stat_cat_entry, stat_cat, target_usr) FROM stdin;
    actor    	   evergreen    false    351   /      ,           0    0    stat_cat_entry_usr_map_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('actor.stat_cat_entry_usr_map_id_seq', 1, false);
            actor    	   evergreen    false    350            	,           0    0    stat_cat_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('actor.stat_cat_id_seq', 1, false);
            actor    	   evergreen    false    346            )          0    100495    toolbar 
   TABLE DATA               A   COPY actor.toolbar (id, ws, org, usr, label, layout) FROM stdin;
    actor    	   evergreen    false    392   L      
,           0    0    toolbar_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('actor.toolbar_id_seq', 1, false);
            actor    	   evergreen    false    391            �(          0    99577    usr_activity_type 
   TABLE DATA               e   COPY config.usr_activity_type (id, ewho, ewhat, ehow, label, egroup, enabled, transient) FROM stdin;
    config    	   evergreen    false    317         )          0    100475    usr_activity 
   TABLE DATA               A   COPY actor.usr_activity (id, usr, etype, event_time) FROM stdin;
    actor    	   evergreen    false    390   �      ,           0    0    usr_activity_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('actor.usr_activity_id_seq', 1, false);
            actor    	   evergreen    false    389            )          0    100326    usr_address 
   TABLE DATA               �   COPY actor.usr_address (id, valid, within_city_limits, address_type, usr, street1, street2, city, county, state, country, post_code, pending, replaces) FROM stdin;
    actor    	   evergreen    false    378         ,           0    0    usr_address_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('actor.usr_address_id_seq', 1, false);
            actor    	   evergreen    false    377            ,           0    0 
   usr_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('actor.usr_id_seq', 1, true);
            actor    	   evergreen    false    338            !)          0    100620    usr_message 
   TABLE DATA               k   COPY actor.usr_message (id, usr, title, message, create_date, deleted, read_date, sending_lib) FROM stdin;
    actor    	   evergreen    false    404   0      ,           0    0    usr_message_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('actor.usr_message_id_seq', 1, false);
            actor    	   evergreen    false    403            �(          0    99912    usr_note 
   TABLE DATA               S   COPY actor.usr_note (id, usr, creator, create_date, pub, title, value) FROM stdin;
    actor    	   evergreen    false    342   M      ,           0    0    usr_note_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('actor.usr_note_id_seq', 1, false);
            actor    	   evergreen    false    341            )          0    100265    usr_org_unit_opt_in 
   TABLE DATA               \   COPY actor.usr_org_unit_opt_in (id, org_unit, usr, staff, opt_in_ts, opt_in_ws) FROM stdin;
    actor    	   evergreen    false    374   j      ,           0    0    usr_org_unit_opt_in_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('actor.usr_org_unit_opt_in_id_seq', 1, false);
            actor    	   evergreen    false    373            	)          0    100357    usr_password_reset 
   TABLE DATA               X   COPY actor.usr_password_reset (id, uuid, usr, request_time, has_been_reset) FROM stdin;
    actor    	   evergreen    false    380   �      ,           0    0    usr_password_reset_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('actor.usr_password_reset_id_seq', 1, false);
            actor    	   evergreen    false    379            ()          0    100725    usr_privacy_waiver 
   TABLE DATA               s   COPY actor.usr_privacy_waiver (id, usr, name, place_holds, pickup_holds, view_history, checkout_items) FROM stdin;
    actor    	   evergreen    false    413   �      ,           0    0    usr_privacy_waiver_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('actor.usr_privacy_waiver_id_seq', 1, false);
            actor    	   evergreen    false    412            )          0    100433    usr_saved_search 
   TABLE DATA               g   COPY actor.usr_saved_search (id, owner, name, create_date, query_text, query_type, target) FROM stdin;
    actor    	   evergreen    false    386   �      ,           0    0    usr_saved_search_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('actor.usr_saved_search_id_seq', 1, false);
            actor    	   evergreen    false    385            �(          0    99937    usr_setting 
   TABLE DATA               :   COPY actor.usr_setting (id, usr, name, value) FROM stdin;
    actor    	   evergreen    false    344   �      ,           0    0    usr_setting_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('actor.usr_setting_id_seq', 1, false);
            actor    	   evergreen    false    343            }(          0    98789    standing_penalty 
   TABLE DATA               q   COPY config.standing_penalty (id, name, label, block_list, staff_alert, org_depth, ignore_proximity) FROM stdin;
    config    	   evergreen    false    232   �      )          0    100399    usr_standing_penalty 
   TABLE DATA               t   COPY actor.usr_standing_penalty (id, org_unit, usr, standing_penalty, staff, set_date, stop_date, note) FROM stdin;
    actor    	   evergreen    false    384         ,           0    0    usr_standing_penalty_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('actor.usr_standing_penalty_id_seq', 1, false);
            actor    	   evergreen    false    383            ,           0    0    usr_usrgroup_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('actor.usr_usrgroup_seq', 1, true);
            actor    	   evergreen    false    339            ,           0    0    workstation_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('actor.workstation_id_seq', 1, false);
            actor    	   evergreen    false    371            �(          0    99334    workstation_setting_type 
   TABLE DATA               e   COPY config.workstation_setting_type (name, label, grp, description, datatype, fm_class) FROM stdin;
    config    	   evergreen    false    291   8      &)          0    100696    workstation_setting 
   TABLE DATA               J   COPY actor.workstation_setting (id, workstation, name, value) FROM stdin;
    actor    	   evergreen    false    410   %      ,           0    0    workstation_setting_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('actor.workstation_setting_id_seq', 1, false);
            actor    	   evergreen    false    409            ,           0    0    call_number_class_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('asset.call_number_class_id_seq', 3, true);
            asset    	   evergreen    false    661            ,           0    0    call_number_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('asset.call_number_id_seq', 1, false);
            asset    	   evergreen    false    667            �)          0    103470    call_number_note 
   TABLE DATA               c   COPY asset.call_number_note (id, call_number, creator, create_date, pub, title, value) FROM stdin;
    asset    	   evergreen    false    672   !%      ,           0    0    call_number_note_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('asset.call_number_note_id_seq', 1, false);
            asset    	   evergreen    false    671            ,           0    0    call_number_prefix_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('asset.call_number_prefix_id_seq', 1, false);
            asset    	   evergreen    false    663            ,           0    0    call_number_suffix_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('asset.call_number_suffix_id_seq', 1, false);
            asset    	   evergreen    false    665            �)          0    103165    copy 
   TABLE DATA               �  COPY asset.copy (id, circ_lib, creator, call_number, editor, create_date, edit_date, copy_number, status, location, loan_duration, fine_level, age_protect, circulate, deposit, ref, holdable, deposit_amount, price, barcode, circ_modifier, circ_as_type, dummy_title, dummy_author, alert_message, opac_visible, deleted, floating, dummy_isbn, status_changed_time, active_date, mint_condition, cost) FROM stdin;
    asset    	   evergreen    false    641   >%      *          0    103665 
   copy_alert 
   TABLE DATA               u   COPY asset.copy_alert (id, alert_type, copy, temp, create_time, create_staff, note, ack_time, ack_staff) FROM stdin;
    asset    	   evergreen    false    686   [%      ,           0    0    copy_alert_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('asset.copy_alert_id_seq', 1, false);
            asset    	   evergreen    false    685            ,           0    0    copy_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('asset.copy_id_seq', 1, false);
            asset    	   evergreen    false    640            �)          0    103124    copy_location_group 
   TABLE DATA               U   COPY asset.copy_location_group (id, name, owner, pos, top, opac_visible) FROM stdin;
    asset    	   evergreen    false    637   x%       ,           0    0    copy_location_group_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('asset.copy_location_group_id_seq', 1, false);
            asset    	   evergreen    false    636            �)          0    103145    copy_location_group_map 
   TABLE DATA               F   COPY asset.copy_location_group_map (id, location, lgroup) FROM stdin;
    asset    	   evergreen    false    639   �%      !,           0    0    copy_location_group_map_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('asset.copy_location_group_map_id_seq', 1, false);
            asset    	   evergreen    false    638            ",           0    0    copy_location_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('asset.copy_location_id_seq', 100, true);
            asset    	   evergreen    false    632            �)          0    103103    copy_location_order 
   TABLE DATA               K   COPY asset.copy_location_order (id, location, org, "position") FROM stdin;
    asset    	   evergreen    false    635   �%      #,           0    0    copy_location_order_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('asset.copy_location_order_id_seq', 1, false);
            asset    	   evergreen    false    634            �)          0    103325 	   copy_note 
   TABLE DATA               \   COPY asset.copy_note (id, owning_copy, creator, create_date, pub, title, value) FROM stdin;
    asset    	   evergreen    false    658   �%      $,           0    0    copy_note_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('asset.copy_note_id_seq', 1, false);
            asset    	   evergreen    false    657            ^)          0    101487    monograph_part 
   TABLE DATA               S   COPY biblio.monograph_part (id, record, label, label_sortkey, deleted) FROM stdin;
    biblio    	   evergreen    false    483   �%      �)          0    103213    copy_part_map 
   TABLE DATA               =   COPY asset.copy_part_map (id, target_copy, part) FROM stdin;
    asset    	   evergreen    false    643   	&      %,           0    0    copy_part_map_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('asset.copy_part_map_id_seq', 1, false);
            asset    	   evergreen    false    642            �(          0    99725    copy_tag_type 
   TABLE DATA               ;   COPY config.copy_tag_type (code, label, owner) FROM stdin;
    config    	   evergreen    false    331   &&      *          0    103557    copy_tag 
   TABLE DATA               h   COPY asset.copy_tag (id, tag_type, label, value, index_vector, staff_note, pub, owner, url) FROM stdin;
    asset    	   evergreen    false    678   Z&      *          0    103587    copy_tag_copy_map 
   TABLE DATA               9   COPY asset.copy_tag_copy_map (id, copy, tag) FROM stdin;
    asset    	   evergreen    false    680   w&      &,           0    0    copy_tag_copy_map_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('asset.copy_tag_copy_map_id_seq', 1, false);
            asset    	   evergreen    false    679            ',           0    0    copy_tag_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('asset.copy_tag_id_seq', 1, false);
            asset    	   evergreen    false    677            (,           0    0    copy_template_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('asset.copy_template_id_seq', 1, false);
            asset    	   evergreen    false    673            *          0    103529    copy_vis_attr_cache 
   TABLE DATA               V   COPY asset.copy_vis_attr_cache (id, record, target_copy, vis_attr_vector) FROM stdin;
    asset    	   evergreen    false    676   �&      ),           0    0    copy_vis_attr_cache_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('asset.copy_vis_attr_cache_id_seq', 1, false);
            asset    	   evergreen    false    675            *          0    103697    course_module_course 
   TABLE DATA               o   COPY asset.course_module_course (id, name, course_number, section_number, owning_lib, is_archived) FROM stdin;
    asset    	   evergreen    false    689   �&      *,           0    0    course_module_course_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('asset.course_module_course_id_seq', 1, false);
            asset    	   evergreen    false    688            *          0    103751    course_module_course_materials 
   TABLE DATA               �   COPY asset.course_module_course_materials (id, course, item, relationship, record, temporary_record, original_location, original_status, original_circ_modifier, original_callnumber) FROM stdin;
    asset    	   evergreen    false    695   �&      +,           0    0 %   course_module_course_materials_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('asset.course_module_course_materials_id_seq', 1, false);
            asset    	   evergreen    false    694            *          0    103714    course_module_role 
   TABLE DATA               @   COPY asset.course_module_role (id, name, is_public) FROM stdin;
    asset    	   evergreen    false    691   �&      *          0    103728    course_module_course_users 
   TABLE DATA               N   COPY asset.course_module_course_users (id, course, usr, usr_role) FROM stdin;
    asset    	   evergreen    false    693   7'      ,,           0    0 !   course_module_course_users_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('asset.course_module_course_users_id_seq', 1, false);
            asset    	   evergreen    false    692            -,           0    0    course_module_role_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('asset.course_module_role_id_seq', 100, true);
            asset    	   evergreen    false    690            *          0    103794    course_module_term 
   TABLE DATA               W   COPY asset.course_module_term (id, name, owning_lib, start_date, end_date) FROM stdin;
    asset    	   evergreen    false    697   T'      *          0    103812    course_module_term_course_map 
   TABLE DATA               H   COPY asset.course_module_term_course_map (id, term, course) FROM stdin;
    asset    	   evergreen    false    699   q'      .,           0    0 $   course_module_term_course_map_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('asset.course_module_term_course_map_id_seq', 1, false);
            asset    	   evergreen    false    698            /,           0    0    course_module_term_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('asset.course_module_term_id_seq', 1, false);
            asset    	   evergreen    false    696            �)          0    103227    latest_inventory 
   TABLE DATA               Z   COPY asset.latest_inventory (id, inventory_workstation, inventory_date, copy) FROM stdin;
    asset    	   evergreen    false    645   �'      0,           0    0    latest_inventory_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('asset.latest_inventory_id_seq', 1, false);
            asset    	   evergreen    false    644            �)          0    103242    opac_visible_copies 
   TABLE DATA               K   COPY asset.opac_visible_copies (id, copy_id, record, circ_lib) FROM stdin;
    asset    	   evergreen    false    647   �'      1,           0    0    opac_visible_copies_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('asset.opac_visible_copies_id_seq', 1, false);
            asset    	   evergreen    false    646            �)          0    103257    stat_cat_sip_fields 
   TABLE DATA               C   COPY asset.stat_cat_sip_fields (field, name, one_only) FROM stdin;
    asset    	   evergreen    false    648   �'      �)          0    103278    stat_cat 
   TABLE DATA               s   COPY asset.stat_cat (id, owner, opac_visible, name, required, sip_field, sip_format, checkout_archive) FROM stdin;
    asset    	   evergreen    false    652   �'      �)          0    103299    stat_cat_entry 
   TABLE DATA               C   COPY asset.stat_cat_entry (id, stat_cat, owner, value) FROM stdin;
    asset    	   evergreen    false    654   (      �)          0    103312    stat_cat_entry_copy_map 
   TABLE DATA               [   COPY asset.stat_cat_entry_copy_map (id, stat_cat, stat_cat_entry, owning_copy) FROM stdin;
    asset    	   evergreen    false    656   (      2,           0    0    stat_cat_entry_copy_map_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('asset.stat_cat_entry_copy_map_id_seq', 1, false);
            asset    	   evergreen    false    655            3,           0    0    stat_cat_entry_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('asset.stat_cat_entry_id_seq', 1, false);
            asset    	   evergreen    false    653            �)          0    103268    stat_cat_entry_transparency_map 
   TABLE DATA               k   COPY asset.stat_cat_entry_transparency_map (id, stat_cat, stat_cat_entry, owning_transparency) FROM stdin;
    asset    	   evergreen    false    650   <(      4,           0    0 &   stat_cat_entry_transparency_map_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('asset.stat_cat_entry_transparency_map_id_seq', 1, false);
            asset    	   evergreen    false    649            5,           0    0    stat_cat_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('asset.stat_cat_id_seq', 1, false);
            asset    	   evergreen    false    651            �)          0    103449    uri_call_number_map 
   TABLE DATA               B   COPY asset.uri_call_number_map (id, uri, call_number) FROM stdin;
    asset    	   evergreen    false    670   Y(      6,           0    0    uri_call_number_map_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('asset.uri_call_number_map_id_seq', 1, false);
            asset    	   evergreen    false    669            7,           0    0 
   uri_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('asset.uri_id_seq', 1, false);
            asset    	   evergreen    false    659            �+          0    109491    acq_invoice_entry_history 
   TABLE DATA               �   COPY auditor.acq_invoice_entry_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, invoice, purchase_order, lineitem, inv_item_count, phys_item_count, note, billed_per_item, cost_billed, actual_cost, amount_paid) FROM stdin;
    auditor    	   evergreen    false    1147   v(      8,           0    0    acq_invoice_entry_pkey_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('auditor.acq_invoice_entry_pkey_seq', 1, false);
            auditor    	   evergreen    false    1146            �+          0    109457    acq_invoice_history 
   TABLE DATA               �   COPY auditor.acq_invoice_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, receiver, provider, shipper, recv_date, recv_method, inv_type, inv_ident, payment_auth, payment_method, note, close_date, closed_by) FROM stdin;
    auditor    	   evergreen    false    1141   �(      �+          0    109474    acq_invoice_item_history 
   TABLE DATA               �   COPY auditor.acq_invoice_item_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, invoice, purchase_order, fund_debit, inv_item_type, title, author, note, cost_billed, actual_cost, fund, amount_paid, po_item, target) FROM stdin;
    auditor    	   evergreen    false    1144   �(      9,           0    0    acq_invoice_item_pkey_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auditor.acq_invoice_item_pkey_seq', 1, false);
            auditor    	   evergreen    false    1143            :,           0    0    acq_invoice_pkey_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('auditor.acq_invoice_pkey_seq', 1, false);
            auditor    	   evergreen    false    1140            z+          0    109364    actor_org_unit_history 
   TABLE DATA               �   COPY auditor.actor_org_unit_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, parent_ou, ou_type, ill_address, holds_address, mailing_address, billing_address, shortname, name, email, phone, opac_visible, fiscal_calendar) FROM stdin;
    auditor    	   evergreen    false    1126   �(      ;,           0    0    actor_org_unit_pkey_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('auditor.actor_org_unit_pkey_seq', 1, false);
            auditor    	   evergreen    false    1125            x+          0    109346    actor_usr_address_history 
   TABLE DATA               �   COPY auditor.actor_usr_address_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, valid, within_city_limits, address_type, usr, street1, street2, city, county, state, country, post_code, pending, replaces) FROM stdin;
    auditor    	   evergreen    false    1123   �(      <,           0    0    actor_usr_address_pkey_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('auditor.actor_usr_address_pkey_seq', 1, false);
            auditor    	   evergreen    false    1122            v+          0    109328    actor_usr_history 
   TABLE DATA               �  COPY auditor.actor_usr_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, card, profile, usrname, email, passwd, standing, ident_type, ident_value, ident_type2, ident_value2, net_access_level, photo_url, prefix, first_given_name, second_given_name, family_name, suffix, guardian, pref_prefix, pref_first_given_name, pref_second_given_name, pref_family_name, pref_suffix, name_keywords, name_kw_tsvector, alias, day_phone, evening_phone, other_phone, mailing_address, billing_address, home_ou, dob, active, master_account, super_user, barred, deleted, juvenile, usrgroup, claims_returned_count, credit_forward_balance, last_xact_id, alert_message, create_date, expire_date, claims_never_checked_out_count, last_update_time) FROM stdin;
    auditor    	   evergreen    false    1120   )      =,           0    0    actor_usr_pkey_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('auditor.actor_usr_pkey_seq', 1, true);
            auditor    	   evergreen    false    1119            ~+          0    109400    asset_call_number_history 
   TABLE DATA               �   COPY auditor.asset_call_number_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, creator, create_date, editor, edit_date, record, owning_lib, label, deleted, prefix, suffix, label_class, label_sortkey) FROM stdin;
    auditor    	   evergreen    false    1132   �)      >,           0    0    asset_call_number_pkey_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('auditor.asset_call_number_pkey_seq', 1, false);
            auditor    	   evergreen    false    1131            �+          0    109419    asset_copy_history 
   TABLE DATA               �  COPY auditor.asset_copy_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, circ_lib, creator, call_number, editor, create_date, edit_date, copy_number, status, location, loan_duration, fine_level, age_protect, circulate, deposit, ref, holdable, deposit_amount, price, barcode, circ_modifier, circ_as_type, dummy_title, dummy_author, alert_message, opac_visible, deleted, floating, dummy_isbn, status_changed_time, active_date, mint_condition, cost) FROM stdin;
    auditor    	   evergreen    false    1135   *      ?,           0    0    asset_copy_pkey_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('auditor.asset_copy_pkey_seq', 1, false);
            auditor    	   evergreen    false    1134            |+          0    109381    biblio_record_entry_history 
   TABLE DATA               3  COPY auditor.biblio_record_entry_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, creator, editor, source, quality, create_date, edit_date, active, deleted, fingerprint, tcn_source, tcn_value, marc, last_xact_id, vis_attr_vector, owner, share_depth, merge_date, merged_to) FROM stdin;
    auditor    	   evergreen    false    1129   0*      @,           0    0    biblio_record_entry_pkey_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('auditor.biblio_record_entry_pkey_seq', 1, false);
            auditor    	   evergreen    false    1128            �+          0    109438    serial_unit_history 
   TABLE DATA                 COPY auditor.serial_unit_history (audit_id, audit_time, audit_action, audit_user, audit_ws, id, circ_lib, creator, call_number, editor, create_date, edit_date, copy_number, status, location, loan_duration, fine_level, age_protect, circulate, deposit, ref, holdable, deposit_amount, price, barcode, circ_modifier, circ_as_type, dummy_title, dummy_author, alert_message, opac_visible, deleted, floating, dummy_isbn, status_changed_time, active_date, mint_condition, cost, sort_key, detailed_contents, summary_contents) FROM stdin;
    auditor    	   evergreen    false    1138   M*      A,           0    0    serial_unit_pkey_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('auditor.serial_unit_pkey_seq', 1, false);
            auditor    	   evergreen    false    1137            d)          0    101609    control_set 
   TABLE DATA               ?   COPY authority.control_set (id, name, description) FROM stdin;
 	   authority    	   evergreen    false    490   j*      ~(          0    98801    xml_transform 
   TABLE DATA               J   COPY config.xml_transform (name, namespace_uri, prefix, xslt) FROM stdin;
    config    	   evergreen    false    233   �*      `)          0    101567    heading_field 
   TABLE DATA               �   COPY authority.heading_field (id, heading_type, heading_purpose, label, format, heading_xpath, component_xpath, type_xpath, thesaurus_xpath, thesaurus_override_xpath, joiner) FROM stdin;
 	   authority    	   evergreen    false    485   �      f)          0    101622    control_set_authority_field 
   TABLE DATA               �   COPY authority.control_set_authority_field (id, main_entry, control_set, tag, nfi, sf_list, display_sf_list, name, description, joiner, linking_subfield, heading_field) FROM stdin;
 	   authority    	   evergreen    false    492   �      p)          0    101758    record_entry 
   TABLE DATA               �   COPY authority.record_entry (id, create_date, edit_date, creator, editor, active, deleted, source, control_set, marc, last_xact_id, owner, heading, simple_heading) FROM stdin;
 	   authority    	   evergreen    false    508   l	      r)          0    101788    authority_linking 
   TABLE DATA               I   COPY authority.authority_linking (id, source, target, field) FROM stdin;
 	   authority    	   evergreen    false    510   �	      B,           0    0    authority_linking_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('authority.authority_linking_id_seq', 1, false);
         	   authority    	   evergreen    false    509            t)          0    101811    bib_linking 
   TABLE DATA               <   COPY authority.bib_linking (id, bib, authority) FROM stdin;
 	   authority    	   evergreen    false    512   �	      C,           0    0    bib_linking_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('authority.bib_linking_id_seq', 1, false);
         	   authority    	   evergreen    false    511            �(          0    99153 '   marc21_physical_characteristic_type_map 
   TABLE DATA               S   COPY config.marc21_physical_characteristic_type_map (ptype_key, label) FROM stdin;
    config    	   evergreen    false    273   �	      �(          0    99163 +   marc21_physical_characteristic_subfield_map 
   TABLE DATA               x   COPY config.marc21_physical_characteristic_subfield_map (id, ptype_key, subfield, start_pos, length, label) FROM stdin;
    config    	   evergreen    false    275   e
      �(          0    99403    record_attr_definition 
   TABLE DATA               �   COPY config.record_attr_definition (name, label, description, multi, filter, sorter, composite, tag, sf_list, joiner, xpath, format, start_pos, string_len, fixed_field, phys_char_sf, vocabulary) FROM stdin;
    config    	   evergreen    false    296   �      l)          0    101720    browse_axis 
   TABLE DATA               I   COPY authority.browse_axis (code, name, sorter, description) FROM stdin;
 	   authority    	   evergreen    false    504   D&      n)          0    101737    browse_axis_authority_field_map 
   TABLE DATA               M   COPY authority.browse_axis_authority_field_map (id, axis, field) FROM stdin;
 	   authority    	   evergreen    false    506   �&      D,           0    0 &   browse_axis_authority_field_map_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('authority.browse_axis_authority_field_map_id_seq', 9, true);
         	   authority    	   evergreen    false    505            E,           0    0 "   control_set_authority_field_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('authority.control_set_authority_field_id_seq', 1000, true);
         	   authority    	   evergreen    false    491            h)          0    101648    control_set_bib_field 
   TABLE DATA               L   COPY authority.control_set_bib_field (id, authority_field, tag) FROM stdin;
 	   authority    	   evergreen    false    494   '      F,           0    0    control_set_bib_field_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('authority.control_set_bib_field_id_seq', 1037, true);
         	   authority    	   evergreen    false    493            �(          0    98822    metabib_class 
   TABLE DATA               y   COPY config.metabib_class (name, label, buoyant, restrict, combined, a_weight, b_weight, c_weight, d_weight) FROM stdin;
    config    	   evergreen    false    236   �'      �(          0    98841    metabib_field 
   TABLE DATA               �   COPY config.metabib_field (id, field_class, name, label, xpath, weight, format, search_field, facet_field, browse_field, browse_xpath, browse_sort_xpath, facet_xpath, display_xpath, authority_xpath, joiner, restrict, display_field) FROM stdin;
    config    	   evergreen    false    238   A(      j)          0    101661 '   control_set_bib_field_metabib_field_map 
   TABLE DATA               b   COPY authority.control_set_bib_field_metabib_field_map (id, bib_field, metabib_field) FROM stdin;
 	   authority    	   evergreen    false    496   �.      G,           0    0 .   control_set_bib_field_metabib_field_map_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('authority.control_set_bib_field_metabib_field_map_id_seq', 21, true);
         	   authority    	   evergreen    false    495            H,           0    0    control_set_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('authority.control_set_id_seq', 100, true);
         	   authority    	   evergreen    false    489            z)          0    101866    full_rec 
   TABLE DATA               a   COPY authority.full_rec (id, record, tag, ind1, ind2, subfield, value, index_vector) FROM stdin;
 	   authority    	   evergreen    false    518   [/      I,           0    0    full_rec_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('authority.full_rec_id_seq', 1, false);
         	   authority    	   evergreen    false    517            J,           0    0    heading_field_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('authority.heading_field_id_seq', 24, true);
         	   authority    	   evergreen    false    484            �(          0    99369    index_normalizer 
   TABLE DATA               T   COPY config.index_normalizer (id, name, description, func, param_count) FROM stdin;
    config    	   evergreen    false    293   x/      b)          0    101584    heading_field_norm_map 
   TABLE DATA               Q   COPY authority.heading_field_norm_map (id, field, norm, params, pos) FROM stdin;
 	   authority    	   evergreen    false    487   �3      K,           0    0    heading_field_norm_map_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('authority.heading_field_norm_map_id_seq', 24, true);
         	   authority    	   evergreen    false    486            x)          0    101854    rec_descriptor 
   TABLE DATA               a   COPY authority.rec_descriptor (id, record, record_status, encoding_level, thesaurus) FROM stdin;
 	   authority    	   evergreen    false    516   4      L,           0    0    rec_descriptor_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('authority.rec_descriptor_id_seq', 1, false);
         	   authority    	   evergreen    false    515            M,           0    0    record_entry_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('authority.record_entry_id_seq', 1, false);
         	   authority    	   evergreen    false    507            v)          0    101831    record_note 
   TABLE DATA               d   COPY authority.record_note (id, record, value, creator, editor, create_date, edit_date) FROM stdin;
 	   authority    	   evergreen    false    514   !4      N,           0    0    record_note_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('authority.record_note_id_seq', 1, false);
         	   authority    	   evergreen    false    513            |)          0    101888    simple_heading 
   TABLE DATA               i   COPY authority.simple_heading (id, record, atag, value, sort_value, index_vector, thesaurus) FROM stdin;
 	   authority    	   evergreen    false    520   >4      O,           0    0    simple_heading_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('authority.simple_heading_id_seq', 1, false);
         	   authority    	   evergreen    false    519            k)          0    101704 	   thesaurus 
   TABLE DATA               ]   COPY authority.thesaurus (code, control_set, name, description, short_code, uri) FROM stdin;
 	   authority    	   evergreen    false    503   [4      P,           0    0    autogen_tcn_value_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('biblio.autogen_tcn_value_seq', 1, false);
            biblio    	   evergreen    false    473            Q,           0    0    monograph_part_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('biblio.monograph_part_id_seq', 1, false);
            biblio    	   evergreen    false    482            Z)          0    101454 	   peer_type 
   TABLE DATA               -   COPY biblio.peer_type (id, name) FROM stdin;
    biblio    	   evergreen    false    479   _      \)          0    101467    peer_bib_copy_map 
   TABLE DATA               T   COPY biblio.peer_bib_copy_map (id, peer_type, peer_record, target_copy) FROM stdin;
    biblio    	   evergreen    false    481   d_      R,           0    0    peer_bib_copy_map_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('biblio.peer_bib_copy_map_id_seq', 1, false);
            biblio    	   evergreen    false    480            S,           0    0    peer_type_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('biblio.peer_type_id_seq', 100, true);
            biblio    	   evergreen    false    478            T,           0    0    record_entry_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('biblio.record_entry_id_seq', 1, false);
            biblio    	   evergreen    false    474            X)          0    101435    record_note 
   TABLE DATA               f   COPY biblio.record_note (id, record, value, creator, editor, pub, create_date, edit_date) FROM stdin;
    biblio    	   evergreen    false    477   �_      U,           0    0    record_note_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('biblio.record_note_id_seq', 1, false);
            biblio    	   evergreen    false    476            �*          0    105613    resource_attr 
   TABLE DATA               R   COPY booking.resource_attr (id, owner, name, resource_type, required) FROM stdin;
    booking    	   evergreen    false    856   �_      �*          0    105637    resource_attr_value 
   TABLE DATA               L   COPY booking.resource_attr_value (id, owner, attr, valid_value) FROM stdin;
    booking    	   evergreen    false    858   �_      �*          0    105735    reservation_attr_value_map 
   TABLE DATA               R   COPY booking.reservation_attr_value_map (id, reservation, attr_value) FROM stdin;
    booking    	   evergreen    false    863   �_      V,           0    0 !   reservation_attr_value_map_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('booking.reservation_attr_value_map_id_seq', 1, false);
            booking    	   evergreen    false    862            W,           0    0    resource_attr_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('booking.resource_attr_id_seq', 1, false);
            booking    	   evergreen    false    855            �*          0    105660    resource_attr_map 
   TABLE DATA               P   COPY booking.resource_attr_map (id, resource, resource_attr, value) FROM stdin;
    booking    	   evergreen    false    860   �_      X,           0    0    resource_attr_map_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('booking.resource_attr_map_id_seq', 1, false);
            booking    	   evergreen    false    859            Y,           0    0    resource_attr_value_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('booking.resource_attr_value_id_seq', 1, false);
            booking    	   evergreen    false    857            Z,           0    0    resource_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('booking.resource_id_seq', 1, false);
            booking    	   evergreen    false    853            [,           0    0    resource_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('booking.resource_type_id_seq', 1, false);
            booking    	   evergreen    false    851            �(          0    99516    barcode_completion 
   TABLE DATA               ~   COPY config.barcode_completion (id, active, org_unit, prefix, suffix, length, padding, padding_end, asset, actor) FROM stdin;
    config    	   evergreen    false    310   `      \,           0    0    barcode_completion_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('config.barcode_completion_id_seq', 1, false);
            config    	   evergreen    false    309            �(          0    99619    best_hold_order 
   TABLE DATA               �   COPY config.best_hold_order (id, name, pprox, hprox, owning_lib_to_home_lib_prox, aprox, approx, priority, cut, depth, htime, rtime, shtime) FROM stdin;
    config    	   evergreen    false    322   /`      ],           0    0    best_hold_order_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('config.best_hold_order_id_seq', 7, true);
            config    	   evergreen    false    321            ^,           0    0    bib_source_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('config.bib_source_id_seq', 100, true);
            config    	   evergreen    false    227            �(          0    98811    biblio_fingerprint 
   TABLE DATA               Q   COPY config.biblio_fingerprint (id, name, xpath, first_word, format) FROM stdin;
    config    	   evergreen    false    235   �`      _,           0    0    biblio_fingerprint_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('config.biblio_fingerprint_id_seq', 4, true);
            config    	   evergreen    false    234            �(          0    99276    billing_type 
   TABLE DATA               F   COPY config.billing_type (id, name, owner, default_price) FROM stdin;
    config    	   evergreen    false    287   �a      `,           0    0    billing_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('config.billing_type_id_seq', 101, true);
            config    	   evergreen    false    286            �(          0    99769    carousel_type 
   TABLE DATA                  COPY config.carousel_type (id, name, automatic, filter_by_age, filter_by_copy_owning_lib, filter_by_copy_location) FROM stdin;
    config    	   evergreen    false    337   zb      a,           0    0    carousel_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('config.carousel_type_id_seq', 100, true);
            config    	   evergreen    false    336            b,           0    0    circ_limit_group_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('config.circ_limit_group_id_seq', 1, false);
            config    	   evergreen    false    884            �*          0    106021    circ_limit_set 
   TABLE DATA               e   COPY config.circ_limit_set (id, name, owning_lib, items_out, depth, global, description) FROM stdin;
    config    	   evergreen    false    887   c      �*          0    106063    circ_limit_set_circ_mod_map 
   TABLE DATA               N   COPY config.circ_limit_set_circ_mod_map (id, limit_set, circ_mod) FROM stdin;
    config    	   evergreen    false    891    c      c,           0    0 "   circ_limit_set_circ_mod_map_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('config.circ_limit_set_circ_mod_map_id_seq', 1, false);
            config    	   evergreen    false    890            �*          0    106086    circ_limit_set_copy_loc_map 
   TABLE DATA               N   COPY config.circ_limit_set_copy_loc_map (id, limit_set, copy_loc) FROM stdin;
    config    	   evergreen    false    893   =c      d,           0    0 "   circ_limit_set_copy_loc_map_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('config.circ_limit_set_copy_loc_map_id_seq', 1, false);
            config    	   evergreen    false    892            �*          0    106106    circ_limit_set_group_map 
   TABLE DATA               Z   COPY config.circ_limit_set_group_map (id, limit_set, limit_group, check_only) FROM stdin;
    config    	   evergreen    false    895   Zc      e,           0    0    circ_limit_set_group_map_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('config.circ_limit_set_group_map_id_seq', 1, false);
            config    	   evergreen    false    894            f,           0    0    circ_limit_set_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('config.circ_limit_set_id_seq', 1, false);
            config    	   evergreen    false    886            �(          0    99020    hard_due_date 
   TABLE DATA               O   COPY config.hard_due_date (id, name, ceiling_date, forceto, owner) FROM stdin;
    config    	   evergreen    false    255   wc      �(          0    99006    rule_circ_duration 
   TABLE DATA               o   COPY config.rule_circ_duration (id, name, extended, normal, shrt, max_renewals, max_auto_renewals) FROM stdin;
    config    	   evergreen    false    253   �c      �(          0    99047    rule_max_fine 
   TABLE DATA               E   COPY config.rule_max_fine (id, name, amount, is_percent) FROM stdin;
    config    	   evergreen    false    259   Xd      �(          0    99062    rule_recurring_fine 
   TABLE DATA               m   COPY config.rule_recurring_fine (id, name, high, normal, low, recurrence_interval, grace_period) FROM stdin;
    config    	   evergreen    false    261   �d      �*          0    105940    circ_matrix_matchpoint 
   TABLE DATA               �  COPY config.circ_matrix_matchpoint (id, active, org_unit, grp, circ_modifier, copy_location, marc_type, marc_form, marc_bib_level, marc_vr_format, copy_circ_lib, copy_owning_lib, user_home_ou, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, item_age, circulate, duration_rule, recurring_fine_rule, max_fine_rule, hard_due_date, renewals, grace_period, script_test, total_copy_hold_ratio, available_copy_hold_ratio, description) FROM stdin;
    config    	   evergreen    false    883   e      �*          0    106041    circ_matrix_limit_set_map 
   TABLE DATA               c   COPY config.circ_matrix_limit_set_map (id, matchpoint, limit_set, fallthrough, active) FROM stdin;
    config    	   evergreen    false    889   Ce      g,           0    0     circ_matrix_limit_set_map_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('config.circ_matrix_limit_set_map_id_seq', 1, false);
            config    	   evergreen    false    888            h,           0    0    circ_matrix_matchpoint_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('config.circ_matrix_matchpoint_id_seq', 1, true);
            config    	   evergreen    false    882            �*          0    105869    circ_matrix_weights 
   TABLE DATA               !  COPY config.circ_matrix_weights (id, name, org_unit, grp, circ_modifier, copy_location, marc_type, marc_form, marc_bib_level, marc_vr_format, copy_circ_lib, copy_owning_lib, user_home_ou, ref_flag, juvenile_flag, is_renewal, usr_age_lower_bound, usr_age_upper_bound, item_age) FROM stdin;
    config    	   evergreen    false    876   `e      i,           0    0    circ_matrix_weights_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('config.circ_matrix_weights_id_seq', 4, true);
            config    	   evergreen    false    875            �(          0    99449    coded_value_map 
   TABLE DATA               �   COPY config.coded_value_map (id, ctype, code, value, description, opac_visible, search_label, is_simple, concept_uri) FROM stdin;
    config    	   evergreen    false    300   �e      j,           0    0    coded_value_map_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('config.coded_value_map_id_seq', 11510, true);
            config    	   evergreen    false    299            �(          0    99495    composite_attr_entry_definition 
   TABLE DATA               R   COPY config.composite_attr_entry_definition (coded_value, definition) FROM stdin;
    config    	   evergreen    false    308   B�      k,           0    0    copy_alert_type_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('config.copy_alert_type_id_seq', 100, true);
            config    	   evergreen    false    681            l,           0    0    copy_status_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('config.copy_status_id_seq', 100, true);
            config    	   evergreen    false    264            w(          0    98747    db_patch_dependencies 
   TABLE DATA               Q   COPY config.db_patch_dependencies (db_patch, supersedes, deprecates) FROM stdin;
    config    	   evergreen    false    226   ��      �(          0    98887    display_field_map 
   TABLE DATA               ?   COPY config.display_field_map (name, field, multi) FROM stdin;
    config    	   evergreen    false    241   �      �(          0    99590    filter_dialog_interface 
   TABLE DATA               C   COPY config.filter_dialog_interface (key, description) FROM stdin;
    config    	   evergreen    false    318   	�      �(          0    99600    filter_dialog_filter_set 
   TABLE DATA               r   COPY config.filter_dialog_filter_set (id, name, owning_lib, creator, create_time, interface, filters) FROM stdin;
    config    	   evergreen    false    320   O�      m,           0    0    filter_dialog_filter_set_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('config.filter_dialog_filter_set_id_seq', 1, false);
            config    	   evergreen    false    319            n,           0    0    floating_group_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('config.floating_group_id_seq', 1, true);
            config    	   evergreen    false    903            �*          0    106253    floating_group_member 
   TABLE DATA               m   COPY config.floating_group_member (id, floating_group, org_unit, stop_depth, max_depth, exclude) FROM stdin;
    config    	   evergreen    false    906   l�      o,           0    0    floating_group_member_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('config.floating_group_member_id_seq', 1, true);
            config    	   evergreen    false    905            u(          0    98729    global_flag 
   TABLE DATA               B   COPY config.global_flag (name, value, enabled, label) FROM stdin;
    config    	   evergreen    false    224   ��      p,           0    0    hard_due_date_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('config.hard_due_date_id_seq', 1, false);
            config    	   evergreen    false    254            �(          0    99033    hard_due_date_values 
   TABLE DATA               \   COPY config.hard_due_date_values (id, hard_due_date, ceiling_date, active_date) FROM stdin;
    config    	   evergreen    false    257   ��      q,           0    0    hard_due_date_values_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('config.hard_due_date_values_id_seq', 1, false);
            config    	   evergreen    false    256            �(          0    99078    rule_age_hold_protect 
   TABLE DATA               D   COPY config.rule_age_hold_protect (id, name, age, prox) FROM stdin;
    config    	   evergreen    false    263   ��      �*          0    106162    hold_matrix_matchpoint 
   TABLE DATA               �  COPY config.hold_matrix_matchpoint (id, active, strict_ou_match, user_home_ou, request_ou, pickup_ou, item_owning_ou, item_circ_ou, usr_grp, requestor_grp, circ_modifier, marc_type, marc_form, marc_bib_level, marc_vr_format, juvenile_flag, ref_flag, item_age, holdable, distance_is_from_owner, transit_range, max_holds, include_frozen_holds, stop_blocked_user, age_hold_protect_rule, description) FROM stdin;
    config    	   evergreen    false    901    �      r,           0    0    hold_matrix_matchpoint_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('config.hold_matrix_matchpoint_id_seq', 1, true);
            config    	   evergreen    false    900            �*          0    105882    hold_matrix_weights 
   TABLE DATA               �   COPY config.hold_matrix_weights (id, name, user_home_ou, request_ou, pickup_ou, item_owning_ou, item_circ_ou, usr_grp, requestor_grp, circ_modifier, marc_type, marc_form, marc_bib_level, marc_vr_format, juvenile_flag, ref_flag, item_age) FROM stdin;
    config    	   evergreen    false    878   P�      s,           0    0    hold_matrix_weights_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('config.hold_matrix_weights_id_seq', 4, true);
            config    	   evergreen    false    877            t,           0    0    hold_type_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('config.hold_type_id_seq', 8, true);
            config    	   evergreen    false    332            �(          0    99243    i18n_locale 
   TABLE DATA               N   COPY config.i18n_locale (code, marc_code, name, description, rtl) FROM stdin;
    config    	   evergreen    false    283   ��      �(          0    99256 	   i18n_core 
   TABLE DATA               V   COPY config.i18n_core (id, fq_field, identity_value, translation, string) FROM stdin;
    config    	   evergreen    false    285   ��      u,           0    0    i18n_core_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('config.i18n_core_id_seq', 1, false);
            config    	   evergreen    false    284            v,           0    0    identification_type_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('config.identification_type_id_seq', 100, true);
            config    	   evergreen    false    250            t+          0    108880    idl_field_doc 
   TABLE DATA               K   COPY config.idl_field_doc (id, fm_class, field, owner, string) FROM stdin;
    config    	   evergreen    false    1116   ��      w,           0    0    idl_field_doc_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('config.idl_field_doc_id_seq', 1, false);
            config    	   evergreen    false    1115            x,           0    0    index_normalizer_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('config.index_normalizer_id_seq', 21, true);
            config    	   evergreen    false    292            t(          0    98720    internal_flag 
   TABLE DATA               =   COPY config.internal_flag (name, value, enabled) FROM stdin;
    config    	   evergreen    false    223   ��      �(          0    99143    marc21_ff_pos_map 
   TABLE DATA               k   COPY config.marc21_ff_pos_map (id, fixed_field, tag, rec_type, start_pos, length, default_val) FROM stdin;
    config    	   evergreen    false    272   ��      y,           0    0    marc21_ff_pos_map_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('config.marc21_ff_pos_map_id_seq', 287, true);
            config    	   evergreen    false    271            z,           0    0 2   marc21_physical_characteristic_subfield_map_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('config.marc21_physical_characteristic_subfield_map_id_seq', 76, true);
            config    	   evergreen    false    274            �(          0    99179 (   marc21_physical_characteristic_value_map 
   TABLE DATA               d   COPY config.marc21_physical_characteristic_value_map (id, value, ptype_subfield, label) FROM stdin;
    config    	   evergreen    false    277   �       {,           0    0 /   marc21_physical_characteristic_value_map_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('config.marc21_physical_characteristic_value_map_id_seq', 626, true);
            config    	   evergreen    false    276            �(          0    99133    marc21_rec_type_map 
   TABLE DATA               G   COPY config.marc21_rec_type_map (code, type_val, blvl_val) FROM stdin;
    config    	   evergreen    false    270   ]      �(          0    99664    marc_format 
   TABLE DATA               5   COPY config.marc_format (id, code, name) FROM stdin;
    config    	   evergreen    false    326   �      �(          0    99683 
   marc_field 
   TABLE DATA               �   COPY config.marc_field (id, marc_format, marc_record_type, tag, name, description, fixed_field, repeatable, mandatory, hidden, owner) FROM stdin;
    config    	   evergreen    false    328         |,           0    0    marc_field_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('config.marc_field_id_seq', 391, true);
            config    	   evergreen    false    327            },           0    0    marc_format_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('config.marc_format_id_seq', 100, true);
            config    	   evergreen    false    325            �(          0    99703    marc_subfield 
   TABLE DATA               �   COPY config.marc_subfield (id, marc_format, marc_record_type, tag, code, description, repeatable, mandatory, hidden, value_ctype, owner) FROM stdin;
    config    	   evergreen    false    330   �x      ~,           0    0    marc_subfield_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('config.marc_subfield_id_seq', 3781, true);
            config    	   evergreen    false    329            �(          0    98901    ts_config_list 
   TABLE DATA               2   COPY config.ts_config_list (id, name) FROM stdin;
    config    	   evergreen    false    242   ��      �(          0    98911    metabib_class_ts_map 
   TABLE DATA               �   COPY config.metabib_class_ts_map (id, field_class, ts_config, active, index_weight, index_lang, search_lang, always) FROM stdin;
    config    	   evergreen    false    244   ��      ,           0    0    metabib_class_ts_map_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('config.metabib_class_ts_map_id_seq', 11, true);
            config    	   evergreen    false    243            �,           0    0    metabib_field_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('config.metabib_field_id_seq', 1000, true);
            config    	   evergreen    false    237            �(          0    99383    metabib_field_index_norm_map 
   TABLE DATA               T   COPY config.metabib_field_index_norm_map (id, field, norm, params, pos) FROM stdin;
    config    	   evergreen    false    295   I�      �,           0    0 #   metabib_field_index_norm_map_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('config.metabib_field_index_norm_map_id_seq', 109, true);
            config    	   evergreen    false    294            �(          0    98936    metabib_field_ts_map 
   TABLE DATA               {   COPY config.metabib_field_ts_map (id, metabib_field, ts_config, active, index_weight, index_lang, search_lang) FROM stdin;
    config    	   evergreen    false    246   �      �,           0    0    metabib_field_ts_map_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('config.metabib_field_ts_map_id_seq', 1, true);
            config    	   evergreen    false    245            �(          0    98869    metabib_field_virtual_map 
   TABLE DATA               P   COPY config.metabib_field_virtual_map (id, "real", virtual, weight) FROM stdin;
    config    	   evergreen    false    240   G�      �,           0    0     metabib_field_virtual_map_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('config.metabib_field_virtual_map_id_seq', 40, true);
            config    	   evergreen    false    239            �(          0    98958    metabib_search_alias 
   TABLE DATA               I   COPY config.metabib_search_alias (alias, field_class, field) FROM stdin;
    config    	   evergreen    false    247   ��      �,           0    0    net_access_level_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('config.net_access_level_id_seq', 100, true);
            config    	   evergreen    false    266            �,           0    0    non_cataloged_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('config.non_cataloged_type_id_seq', 100, true);
            config    	   evergreen    false    248            �(          0    99535    org_unit_setting_type_log 
   TABLE DATA               q   COPY config.org_unit_setting_type_log (id, date_applied, org, original_value, new_value, field_name) FROM stdin;
    config    	   evergreen    false    313   f�      �,           0    0     org_unit_setting_type_log_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('config.org_unit_setting_type_log_id_seq', 14, true);
            config    	   evergreen    false    312            �(          0    99747    print_template 
   TABLE DATA               h   COPY config.print_template (id, name, label, owner, active, locale, content_type, template) FROM stdin;
    config    	   evergreen    false    335   ��      �,           0    0    print_template_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('config.print_template_id_seq', 1000, true);
            config    	   evergreen    false    334            �(          0    99427    record_attr_index_norm_map 
   TABLE DATA               Q   COPY config.record_attr_index_norm_map (id, attr, norm, params, pos) FROM stdin;
    config    	   evergreen    false    298   �      �,           0    0 !   record_attr_index_norm_map_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('config.record_attr_index_norm_map_id_seq', 3, true);
            config    	   evergreen    false    297            �(          0    99124    remote_account 
   TABLE DATA               r   COPY config.remote_account (id, label, host, username, password, account, path, owner, last_activity) FROM stdin;
    config    	   evergreen    false    269         �,           0    0    remote_account_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('config.remote_account_id_seq', 1, false);
            config    	   evergreen    false    268            �*          0    106272    remoteauth_profile 
   TABLE DATA               �   COPY config.remoteauth_profile (name, description, context_org, enabled, perm, restrict_to_org, allow_inactive, allow_expired, block_list, usr_activity_type) FROM stdin;
    config    	   evergreen    false    907   6      �,           0    0    rule_age_hold_protect_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('config.rule_age_hold_protect_id_seq', 100, true);
            config    	   evergreen    false    262            �,           0    0    rule_circ_duration_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('config.rule_circ_duration_id_seq', 100, true);
            config    	   evergreen    false    252            �,           0    0    rule_max_fine_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('config.rule_max_fine_id_seq', 100, true);
            config    	   evergreen    false    258            �,           0    0    rule_recurring_fine_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('config.rule_recurring_fine_id_seq', 100, true);
            config    	   evergreen    false    260            �,           0    0    sms_carrier_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('config.sms_carrier_id_seq', 1000, true);
            config    	   evergreen    false    314            �,           0    0    standing_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('config.standing_id_seq', 100, true);
            config    	   evergreen    false    229            �,           0    0    standing_penalty_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('config.standing_penalty_id_seq', 100, true);
            config    	   evergreen    false    231            v(          0    98738    upgrade_log 
   TABLE DATA               H   COPY config.upgrade_log (version, install_date, applied_to) FROM stdin;
    config    	   evergreen    false    225   S      �,           0    0    usr_activity_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('config.usr_activity_type_id_seq', 1000, true);
            config    	   evergreen    false    316            �*          0    105895    weight_assoc 
   TABLE DATA               X   COPY config.weight_assoc (id, active, org_unit, circ_weights, hold_weights) FROM stdin;
    config    	   evergreen    false    880   �      �,           0    0    weight_assoc_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('config.weight_assoc_id_seq', 1, true);
            config    	   evergreen    false    879            �(          0    99193    z3950_source 
   TABLE DATA               w   COPY config.z3950_source (name, label, host, port, db, record_format, transmission_format, auth, use_perm) FROM stdin;
    config    	   evergreen    false    278   �      �(          0    99208 
   z3950_attr 
   TABLE DATA               W   COPY config.z3950_attr (id, source, name, label, code, format, truncation) FROM stdin;
    config    	   evergreen    false    280   ;      �,           0    0    z3950_attr_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('config.z3950_attr_id_seq', 100, true);
            config    	   evergreen    false    279            �(          0    99634    z3950_index_field_map 
   TABLE DATA               s   COPY config.z3950_index_field_map (id, label, metabib_field, record_attr, z3950_attr, z3950_attr_type) FROM stdin;
    config    	   evergreen    false    324   N      �,           0    0    z3950_index_field_map_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('config.z3950_index_field_map_id_seq', 1000, true);
            config    	   evergreen    false    323            �(          0    99227    z3950_source_credentials 
   TABLE DATA               Y   COPY config.z3950_source_credentials (id, owner, source, username, password) FROM stdin;
    config    	   evergreen    false    282   �      �,           0    0    z3950_source_credentials_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('config.z3950_source_credentials_id_seq', 1, false);
            config    	   evergreen    false    281            �,           0    0 !   biblio_record_entry_bucket_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('container.biblio_record_entry_bucket_id_seq', 1, false);
         	   container    	   evergreen    false    719            1*          0    104071    biblio_record_entry_bucket_item 
   TABLE DATA               v   COPY container.biblio_record_entry_bucket_item (id, bucket, target_biblio_record_entry, pos, create_time) FROM stdin;
 	   container    	   evergreen    false    724   �      �,           0    0 &   biblio_record_entry_bucket_item_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('container.biblio_record_entry_bucket_item_id_seq', 1, false);
         	   container    	   evergreen    false    723            3*          0    104090 $   biblio_record_entry_bucket_item_note 
   TABLE DATA               Q   COPY container.biblio_record_entry_bucket_item_note (id, item, note) FROM stdin;
 	   container    	   evergreen    false    726         �,           0    0 +   biblio_record_entry_bucket_item_note_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('container.biblio_record_entry_bucket_item_note_id_seq', 1, false);
         	   container    	   evergreen    false    725            /*          0    104055    biblio_record_entry_bucket_note 
   TABLE DATA               N   COPY container.biblio_record_entry_bucket_note (id, bucket, note) FROM stdin;
 	   container    	   evergreen    false    722   /      �,           0    0 &   biblio_record_entry_bucket_note_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('container.biblio_record_entry_bucket_note_id_seq', 1, false);
         	   container    	   evergreen    false    721            "*          0    103920    call_number_bucket_type 
   TABLE DATA               A   COPY container.call_number_bucket_type (code, label) FROM stdin;
 	   container    	   evergreen    false    709   L      $*          0    103932    call_number_bucket 
   TABLE DATA               r   COPY container.call_number_bucket (id, owner, name, btype, description, pub, owning_lib, create_time) FROM stdin;
 	   container    	   evergreen    false    711   z      �,           0    0    call_number_bucket_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('container.call_number_bucket_id_seq', 1, false);
         	   container    	   evergreen    false    710            (*          0    103979    call_number_bucket_item 
   TABLE DATA               f   COPY container.call_number_bucket_item (id, bucket, target_call_number, pos, create_time) FROM stdin;
 	   container    	   evergreen    false    715   �      �,           0    0    call_number_bucket_item_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('container.call_number_bucket_item_id_seq', 1, false);
         	   container    	   evergreen    false    714            **          0    103998    call_number_bucket_item_note 
   TABLE DATA               I   COPY container.call_number_bucket_item_note (id, item, note) FROM stdin;
 	   container    	   evergreen    false    717   �      �,           0    0 #   call_number_bucket_item_note_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('container.call_number_bucket_item_note_id_seq', 1, false);
         	   container    	   evergreen    false    716            &*          0    103963    call_number_bucket_note 
   TABLE DATA               F   COPY container.call_number_bucket_note (id, bucket, note) FROM stdin;
 	   container    	   evergreen    false    713   �      �,           0    0    call_number_bucket_note_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('container.call_number_bucket_note_id_seq', 1, false);
         	   container    	   evergreen    false    712            >*          0    104199    carousel 
   TABLE DATA               �   COPY container.carousel (id, type, owner, name, bucket, creator, editor, create_time, edit_time, age_filter, owning_lib_filter, copy_location_filter, last_refresh_time, active, max_items) FROM stdin;
 	   container    	   evergreen    false    737   �      �,           0    0    carousel_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('container.carousel_id_seq', 1, false);
         	   container    	   evergreen    false    736            @*          0    104238    carousel_org_unit 
   TABLE DATA               Z   COPY container.carousel_org_unit (id, carousel, override_name, org_unit, seq) FROM stdin;
 	   container    	   evergreen    false    739         �,           0    0    carousel_org_unit_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('container.carousel_org_unit_id_seq', 1, false);
         	   container    	   evergreen    false    738            *          0    103829    copy_bucket_type 
   TABLE DATA               :   COPY container.copy_bucket_type (code, label) FROM stdin;
 	   container    	   evergreen    false    700   (      *          0    103841    copy_bucket 
   TABLE DATA               k   COPY container.copy_bucket (id, owner, name, btype, description, pub, owning_lib, create_time) FROM stdin;
 	   container    	   evergreen    false    702   �      �,           0    0    copy_bucket_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('container.copy_bucket_id_seq', 1, false);
         	   container    	   evergreen    false    701            *          0    103888    copy_bucket_item 
   TABLE DATA               X   COPY container.copy_bucket_item (id, bucket, target_copy, pos, create_time) FROM stdin;
 	   container    	   evergreen    false    706   �      �,           0    0    copy_bucket_item_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('container.copy_bucket_item_id_seq', 1, false);
         	   container    	   evergreen    false    705            !*          0    103906    copy_bucket_item_note 
   TABLE DATA               B   COPY container.copy_bucket_item_note (id, item, note) FROM stdin;
 	   container    	   evergreen    false    708   �      �,           0    0    copy_bucket_item_note_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('container.copy_bucket_item_note_id_seq', 1, false);
         	   container    	   evergreen    false    707            *          0    103872    copy_bucket_note 
   TABLE DATA               ?   COPY container.copy_bucket_note (id, bucket, note) FROM stdin;
 	   container    	   evergreen    false    704   �      �,           0    0    copy_bucket_note_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('container.copy_bucket_note_id_seq', 1, false);
         	   container    	   evergreen    false    703            4*          0    104104    user_bucket_type 
   TABLE DATA               :   COPY container.user_bucket_type (code, label) FROM stdin;
 	   container    	   evergreen    false    727   
      6*          0    104116    user_bucket 
   TABLE DATA               k   COPY container.user_bucket (id, owner, name, btype, description, pub, owning_lib, create_time) FROM stdin;
 	   container    	   evergreen    false    729   �      �,           0    0    user_bucket_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('container.user_bucket_id_seq', 1, false);
         	   container    	   evergreen    false    728            :*          0    104163    user_bucket_item 
   TABLE DATA               X   COPY container.user_bucket_item (id, bucket, target_user, pos, create_time) FROM stdin;
 	   container    	   evergreen    false    733   �      �,           0    0    user_bucket_item_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('container.user_bucket_item_id_seq', 1, false);
         	   container    	   evergreen    false    732            <*          0    104183    user_bucket_item_note 
   TABLE DATA               B   COPY container.user_bucket_item_note (id, item, note) FROM stdin;
 	   container    	   evergreen    false    735         �,           0    0    user_bucket_item_note_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('container.user_bucket_item_note_id_seq', 1, false);
         	   container    	   evergreen    false    734            8*          0    104147    user_bucket_note 
   TABLE DATA               ?   COPY container.user_bucket_note (id, bucket, note) FROM stdin;
 	   container    	   evergreen    false    731   -      �,           0    0    user_bucket_note_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('container.user_bucket_note_id_seq', 1, false);
         	   container    	   evergreen    false    730            �+          0    109856    legacy_circ_count 
   TABLE DATA               D   COPY extend_reporter.legacy_circ_count (id, circ_count) FROM stdin;
    extend_reporter    	   evergreen    false    1175   J      �)          0    102698    author_field_entry 
   TABLE DATA               U   COPY metabib.author_field_entry (id, source, field, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    587   g      �,           0    0    author_field_entry_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('metabib.author_field_entry_id_seq', 1, false);
            metabib    	   evergreen    false    586            �)          0    102839    browse_entry 
   TABLE DATA               L   COPY metabib.browse_entry (id, value, index_vector, sort_value) FROM stdin;
    metabib    	   evergreen    false    607   �      �)          0    102855    browse_entry_def_map 
   TABLE DATA               R   COPY metabib.browse_entry_def_map (id, entry, def, source, authority) FROM stdin;
    metabib    	   evergreen    false    609   �      �,           0    0    browse_entry_def_map_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('metabib.browse_entry_def_map_id_seq', 1, false);
            metabib    	   evergreen    false    608            �,           0    0    browse_entry_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('metabib.browse_entry_id_seq', 1, false);
            metabib    	   evergreen    false    606            �)          0    102886    browse_entry_simple_heading_map 
   TABLE DATA               U   COPY metabib.browse_entry_simple_heading_map (id, entry, simple_heading) FROM stdin;
    metabib    	   evergreen    false    611   �      �,           0    0 &   browse_entry_simple_heading_map_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('metabib.browse_entry_simple_heading_map_id_seq', 1, false);
            metabib    	   evergreen    false    610            �)          0    102711    combined_author_field_entry 
   TABLE DATA               [   COPY metabib.combined_author_field_entry (record, metabib_field, index_vector) FROM stdin;
    metabib    	   evergreen    false    588   �      �)          0    102663    combined_identifier_field_entry 
   TABLE DATA               _   COPY metabib.combined_identifier_field_entry (record, metabib_field, index_vector) FROM stdin;
    metabib    	   evergreen    false    582   �      �)          0    102759    combined_keyword_field_entry 
   TABLE DATA               \   COPY metabib.combined_keyword_field_entry (record, metabib_field, index_vector) FROM stdin;
    metabib    	   evergreen    false    594   	      �)          0    102783    combined_series_field_entry 
   TABLE DATA               [   COPY metabib.combined_series_field_entry (record, metabib_field, index_vector) FROM stdin;
    metabib    	   evergreen    false    597   2	      �)          0    102735    combined_subject_field_entry 
   TABLE DATA               \   COPY metabib.combined_subject_field_entry (record, metabib_field, index_vector) FROM stdin;
    metabib    	   evergreen    false    591   O	      �)          0    102687    combined_title_field_entry 
   TABLE DATA               Z   COPY metabib.combined_title_field_entry (record, metabib_field, index_vector) FROM stdin;
    metabib    	   evergreen    false    585   l	      �)          0    102812    display_entry 
   TABLE DATA               B   COPY metabib.display_entry (id, source, field, value) FROM stdin;
    metabib    	   evergreen    false    602   �	      �,           0    0    display_entry_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('metabib.display_entry_id_seq', 1, false);
            metabib    	   evergreen    false    601            �)          0    102798    facet_entry 
   TABLE DATA               @   COPY metabib.facet_entry (id, source, field, value) FROM stdin;
    metabib    	   evergreen    false    600   �	      �,           0    0    facet_entry_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('metabib.facet_entry_id_seq', 1, false);
            metabib    	   evergreen    false    599            �,           0    0    full_rec_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('metabib.full_rec_id_seq', 1, false);
            metabib    	   evergreen    false    625            �)          0    102650    identifier_field_entry 
   TABLE DATA               Y   COPY metabib.identifier_field_entry (id, source, field, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    581   �	      �,           0    0    identifier_field_entry_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('metabib.identifier_field_entry_id_seq', 1, false);
            metabib    	   evergreen    false    580            �)          0    102746    keyword_field_entry 
   TABLE DATA               V   COPY metabib.keyword_field_entry (id, source, field, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    593   �	      �,           0    0    keyword_field_entry_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('metabib.keyword_field_entry_id_seq', 1, false);
            metabib    	   evergreen    false    592            �)          0    102637 
   metarecord 
   TABLE DATA               K   COPY metabib.metarecord (id, fingerprint, master_record, mods) FROM stdin;
    metabib    	   evergreen    false    579   �	      �,           0    0    metarecord_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('metabib.metarecord_id_seq', 1, false);
            metabib    	   evergreen    false    578            �)          0    103034    metarecord_source_map 
   TABLE DATA               H   COPY metabib.metarecord_source_map (id, metarecord, source) FROM stdin;
    metabib    	   evergreen    false    629   
      �,           0    0    metarecord_source_map_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('metabib.metarecord_source_map_id_seq', 1, false);
            metabib    	   evergreen    false    628            �)          0    103008    real_full_rec 
   TABLE DATA               d   COPY metabib.real_full_rec (id, record, tag, ind1, ind2, subfield, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    626   7
      �)          0    102949    record_attr_vector_list 
   TABLE DATA               A   COPY metabib.record_attr_vector_list (source, vlist) FROM stdin;
    metabib    	   evergreen    false    617   T
      �)          0    102965    record_sorter 
   TABLE DATA               A   COPY metabib.record_sorter (id, source, attr, value) FROM stdin;
    metabib    	   evergreen    false    619   q
      �,           0    0    record_sorter_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('metabib.record_sorter_id_seq', 1, false);
            metabib    	   evergreen    false    618            �)          0    102770    series_field_entry 
   TABLE DATA               U   COPY metabib.series_field_entry (id, source, field, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    596   �
      �,           0    0    series_field_entry_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('metabib.series_field_entry_id_seq', 1, false);
            metabib    	   evergreen    false    595            �)          0    102722    subject_field_entry 
   TABLE DATA               V   COPY metabib.subject_field_entry (id, source, field, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    590   �
      �,           0    0    subject_field_entry_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('metabib.subject_field_entry_id_seq', 1, false);
            metabib    	   evergreen    false    589            �)          0    102674    title_field_entry 
   TABLE DATA               T   COPY metabib.title_field_entry (id, source, field, value, index_vector) FROM stdin;
    metabib    	   evergreen    false    584   �
      �,           0    0    title_field_entry_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('metabib.title_field_entry_id_seq', 1, false);
            metabib    	   evergreen    false    583            �)          0    102914    uncontrolled_record_attr_value 
   TABLE DATA               J   COPY metabib.uncontrolled_record_attr_value (id, attr, value) FROM stdin;
    metabib    	   evergreen    false    613   �
      �,           0    0 %   uncontrolled_record_attr_value_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('metabib.uncontrolled_record_attr_value_id_seq', -1, false);
            metabib    	   evergreen    false    612            Q*          0    104438    billing 
   TABLE DATA               �   COPY money.billing (id, xact, billing_ts, voided, voider, void_time, amount, billing_type, btype, note, create_date, period_start, period_end) FROM stdin;
    money    	   evergreen    false    756         W*          0    104593    account_adjustment 
   TABLE DATA               �   COPY money.account_adjustment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr, billing) FROM stdin;
    money    	   evergreen    false    775         a*          0    104804    aged_billing 
   TABLE DATA               �   COPY money.aged_billing (id, xact, billing_ts, voided, voider, void_time, amount, billing_type, btype, note, create_date, period_start, period_end) FROM stdin;
    money    	   evergreen    false    790   <      `*          0    104791    aged_payment 
   TABLE DATA               �   COPY money.aged_payment (id, xact, payment_ts, voided, amount, note, payment_type, accepting_usr, cash_drawer, billing) FROM stdin;
    money    	   evergreen    false    789   Y      N*          0    104416    billable_xact 
   TABLE DATA               U   COPY money.billable_xact (id, usr, xact_start, xact_finish, unrecovered) FROM stdin;
    money    	   evergreen    false    753   v      �,           0    0    billable_xact_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('money.billable_xact_id_seq', 1, false);
            money    	   evergreen    false    752            �,           0    0    billing_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('money.billing_id_seq', 1, false);
            money    	   evergreen    false    755            [*          0    104671    bnm_desk_payment 
   TABLE DATA               �   COPY money.bnm_desk_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr, cash_drawer) FROM stdin;
    money    	   evergreen    false    779   �      U*          0    104561    bnm_payment 
   TABLE DATA               q   COPY money.bnm_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr) FROM stdin;
    money    	   evergreen    false    773   �      \*          0    104700    cash_payment 
   TABLE DATA                  COPY money.cash_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr, cash_drawer) FROM stdin;
    money    	   evergreen    false    782   �      ]*          0    104719    check_payment 
   TABLE DATA               �   COPY money.check_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr, cash_drawer, check_number) FROM stdin;
    money    	   evergreen    false    783   �      L*          0    104391    collections_tracker 
   TABLE DATA               V   COPY money.collections_tracker (id, usr, collector, location, enter_time) FROM stdin;
    money    	   evergreen    false    751         �,           0    0    collections_tracker_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('money.collections_tracker_id_seq', 1, false);
            money    	   evergreen    false    750            ^*          0    104738    credit_card_payment 
   TABLE DATA               �   COPY money.credit_card_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr, cash_drawer, cc_number, cc_processor, cc_order_number, approval_code) FROM stdin;
    money    	   evergreen    false    784   $      Y*          0    104635    credit_payment 
   TABLE DATA               t   COPY money.credit_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr) FROM stdin;
    money    	   evergreen    false    777   A      _*          0    104757    debit_card_payment 
   TABLE DATA               �   COPY money.debit_card_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr, cash_drawer) FROM stdin;
    money    	   evergreen    false    785   ^      V*          0    104575    forgive_payment 
   TABLE DATA               u   COPY money.forgive_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr) FROM stdin;
    money    	   evergreen    false    774   {      Z*          0    104653    goods_payment 
   TABLE DATA               s   COPY money.goods_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr) FROM stdin;
    money    	   evergreen    false    778   �      O*          0    104424    grocery 
   TABLE DATA               g   COPY money.grocery (id, usr, xact_start, xact_finish, unrecovered, billing_location, note) FROM stdin;
    money    	   evergreen    false    754   �      T*          0    104521 "   materialized_billable_xact_summary 
   TABLE DATA               �   COPY money.materialized_billable_xact_summary (id, usr, xact_start, xact_finish, total_paid, last_payment_ts, last_payment_note, last_payment_type, total_owed, last_billing_ts, last_billing_note, last_billing_type, balance_owed, xact_type) FROM stdin;
    money    	   evergreen    false    769   �      S*          0    104464    payment 
   TABLE DATA               L   COPY money.payment (id, xact, payment_ts, voided, amount, note) FROM stdin;
    money    	   evergreen    false    758   �      �,           0    0    payment_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('money.payment_id_seq', 1, false);
            money    	   evergreen    false    757            X*          0    104617    work_payment 
   TABLE DATA               r   COPY money.work_payment (id, xact, payment_ts, voided, amount, note, amount_collected, accepting_usr) FROM stdin;
    money    	   evergreen    false    776         r(          0    98691    script 
   TABLE DATA               o   COPY offline.script (id, session, requestor, create_time, workstation, logfile, time_delta, count) FROM stdin;
    offline    	   evergreen    false    221   )      �,           0    0    script_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('offline.script_id_seq', 1, false);
            offline    	   evergreen    false    220            s(          0    98705    session 
   TABLE DATA                  COPY offline.session (key, org, description, creator, create_time, in_process, start_time, end_time, num_complete) FROM stdin;
    offline    	   evergreen    false    222   F      .)          0    100784    grp_penalty_threshold 
   TABLE DATA               Z   COPY permission.grp_penalty_threshold (id, grp, org_unit, penalty, threshold) FROM stdin;
 
   permission    	   evergreen    false    419   c      �,           0    0    grp_penalty_threshold_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('permission.grp_penalty_threshold_id_seq', 4, true);
         
   permission    	   evergreen    false    418            0)          0    100809    grp_perm_map 
   TABLE DATA               K   COPY permission.grp_perm_map (id, grp, perm, depth, grantable) FROM stdin;
 
   permission    	   evergreen    false    421   �      �,           0    0    grp_perm_map_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('permission.grp_perm_map_id_seq', 513, true);
         
   permission    	   evergreen    false    420            :)          0    100935    grp_tree_display_entry 
   TABLE DATA               V   COPY permission.grp_tree_display_entry (id, "position", org, grp, parent) FROM stdin;
 
   permission    	   evergreen    false    431   R      �,           0    0    grp_tree_display_entry_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('permission.grp_tree_display_entry_id_seq', 1, false);
         
   permission    	   evergreen    false    430            �,           0    0    grp_tree_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('permission.grp_tree_id_seq', 15, true);
         
   permission    	   evergreen    false    416            �,           0    0    perm_list_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('permission.perm_list_id_seq', 1000, true);
         
   permission    	   evergreen    false    414            6)          0    100876    usr_grp_map 
   TABLE DATA               7   COPY permission.usr_grp_map (id, usr, grp) FROM stdin;
 
   permission    	   evergreen    false    427   o      �,           0    0    usr_grp_map_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('permission.usr_grp_map_id_seq', 1, false);
         
   permission    	   evergreen    false    426            4)          0    100851    usr_object_perm_map 
   TABLE DATA               c   COPY permission.usr_object_perm_map (id, usr, perm, object_type, object_id, grantable) FROM stdin;
 
   permission    	   evergreen    false    425   �      �,           0    0    usr_object_perm_map_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('permission.usr_object_perm_map_id_seq', 1, false);
         
   permission    	   evergreen    false    424            2)          0    100830    usr_perm_map 
   TABLE DATA               K   COPY permission.usr_perm_map (id, usr, perm, depth, grantable) FROM stdin;
 
   permission    	   evergreen    false    423   �      �,           0    0    usr_perm_map_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('permission.usr_perm_map_id_seq', 1, true);
         
   permission    	   evergreen    false    422            8)          0    100904    usr_work_ou_map 
   TABLE DATA               ?   COPY permission.usr_work_ou_map (id, usr, work_ou) FROM stdin;
 
   permission    	   evergreen    false    429   �      �,           0    0    usr_work_ou_map_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('permission.usr_work_ou_map_id_seq', 1, true);
         
   permission    	   evergreen    false    428            G)          0    101070    bind_variable 
   TABLE DATA               U   COPY query.bind_variable (name, type, description, default_value, label) FROM stdin;
    query    	   evergreen    false    444   �      @)          0    100995    datatype 
   TABLE DATA               N   COPY query.datatype (id, datatype_name, is_numeric, is_composite) FROM stdin;
    query    	   evergreen    false    437   H      D)          0    101032    function_sig 
   TABLE DATA               S   COPY query.function_sig (id, function_name, return_type, is_aggregate) FROM stdin;
    query    	   evergreen    false    441   '      I)          0    101081 
   expression 
   TABLE DATA               �   COPY query.expression (id, type, parenthesize, parent_expr, seq_no, literal, table_alias, column_name, left_operand, operator, right_operand, function_id, subquery, cast_type, negate, bind_variable) FROM stdin;
    query    	   evergreen    false    446   D      K)          0    101152    case_branch 
   TABLE DATA               P   COPY query.case_branch (id, parent_expr, seq_no, condition, result) FROM stdin;
    query    	   evergreen    false    448   �      �,           0    0    case_branch_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('query.case_branch_id_seq', 1, false);
            query    	   evergreen    false    447            �,           0    0    datatype_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('query.datatype_id_seq', 1000, true);
            query    	   evergreen    false    436            �,           0    0    expression_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('query.expression_id_seq', 10000, true);
            query    	   evergreen    false    445            M)          0    101177    from_relation 
   TABLE DATA               �   COPY query.from_relation (id, type, table_name, class_name, subquery, function_call, table_alias, parent_relation, seq_no, join_type, on_clause) FROM stdin;
    query    	   evergreen    false    450   �      �,           0    0    from_relation_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('query.from_relation_id_seq', 1000, true);
            query    	   evergreen    false    449            F)          0    101051    function_param_def 
   TABLE DATA               N   COPY query.function_param_def (id, function_id, seq_no, datatype) FROM stdin;
    query    	   evergreen    false    443         �,           0    0    function_param_def_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('query.function_param_def_id_seq', 1, false);
            query    	   evergreen    false    442            �,           0    0    function_sig_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('query.function_sig_id_seq', 1, false);
            query    	   evergreen    false    440            S)          0    101265    order_by_item 
   TABLE DATA               L   COPY query.order_by_item (id, stored_query, seq_no, expression) FROM stdin;
    query    	   evergreen    false    456   :      �,           0    0    order_by_item_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('query.order_by_item_id_seq', 1, false);
            query    	   evergreen    false    455            >)          0    100975    query_sequence 
   TABLE DATA               N   COPY query.query_sequence (id, parent_query, seq_no, child_query) FROM stdin;
    query    	   evergreen    false    435   W      �,           0    0    query_sequence_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('query.query_sequence_id_seq', 1, false);
            query    	   evergreen    false    434            O)          0    101218    record_column 
   TABLE DATA               [   COPY query.record_column (id, from_relation, seq_no, column_name, column_type) FROM stdin;
    query    	   evergreen    false    452   t      �,           0    0    record_column_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('query.record_column_id_seq', 1, false);
            query    	   evergreen    false    451            Q)          0    101241    select_item 
   TABLE DATA               d   COPY query.select_item (id, stored_query, seq_no, expression, column_alias, grouped_by) FROM stdin;
    query    	   evergreen    false    454   �      �,           0    0    select_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('query.select_item_id_seq', 1, true);
            query    	   evergreen    false    453            �,           0    0    stored_query_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('query.stored_query_id_seq', 1000, true);
            query    	   evergreen    false    432            B)          0    101011    subfield 
   TABLE DATA               L   COPY query.subfield (id, composite_type, seq_no, subfield_type) FROM stdin;
    query    	   evergreen    false    439   �      �,           0    0    subfield_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('query.subfield_id_seq', 1, false);
            query    	   evergreen    false    438            Y+          0    108436    popularity_parameter 
   TABLE DATA               �   COPY rating.popularity_parameter (id, name, description, func, require_horizon, require_importance, require_percentile) FROM stdin;
    rating    	   evergreen    false    1080   �      [+          0    108451    badge 
   TABLE DATA                 COPY rating.badge (id, name, description, scope, weight, horizon_age, importance_age, importance_interval, importance_scale, recalc_interval, attr_filter, src_filter, circ_mod_filter, loc_grp_filter, popularity_parameter, fixed_rating, percentile, discard, last_calc) FROM stdin;
    rating    	   evergreen    false    1082   �      �,           0    0    badge_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('rating.badge_id_seq', 1, true);
            rating    	   evergreen    false    1081            ]+          0    108496    record_badge_score 
   TABLE DATA               F   COPY rating.record_badge_score (id, record, badge, score) FROM stdin;
    rating    	   evergreen    false    1084   f      �,           0    0    record_badge_score_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('rating.record_badge_score_id_seq', 1, false);
            rating    	   evergreen    false    1083            �+          0    109816    hold_request_record 
   TABLE DATA               R   COPY reporter.hold_request_record (id, target, hold_type, bib_record) FROM stdin;
    reporter    	   evergreen    false    1168   �      �+          0    109789    materialized_simple_record 
   TABLE DATA               �   COPY reporter.materialized_simple_record (id, fingerprint, quality, tcn_source, tcn_value, title, author, publisher, pubdate, isbn, issn) FROM stdin;
    reporter    	   evergreen    false    1164   �      �+          0    109655    output_folder 
   TABLE DATA               c   COPY reporter.output_folder (id, parent, owner, create_time, name, shared, share_with) FROM stdin;
    reporter    	   evergreen    false    1155   �      �,           0    0    output_folder_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('reporter.output_folder_id_seq', 1, false);
            reporter    	   evergreen    false    1154            �+          0    109624    report_folder 
   TABLE DATA               c   COPY reporter.report_folder (id, parent, owner, create_time, name, shared, share_with) FROM stdin;
    reporter    	   evergreen    false    1153   �      �+          0    109593    template_folder 
   TABLE DATA               e   COPY reporter.template_folder (id, parent, owner, create_time, name, shared, share_with) FROM stdin;
    reporter    	   evergreen    false    1151   �      �+          0    109686    template 
   TABLE DATA               ]   COPY reporter.template (id, owner, create_time, name, description, data, folder) FROM stdin;
    reporter    	   evergreen    false    1157         �+          0    109712    report 
   TABLE DATA               x   COPY reporter.report (id, owner, create_time, name, description, template, data, folder, recur, recurrence) FROM stdin;
    reporter    	   evergreen    false    1159   1      �,           0    0    report_folder_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('reporter.report_folder_id_seq', 1, false);
            reporter    	   evergreen    false    1152            �,           0    0    report_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('reporter.report_id_seq', 1, false);
            reporter    	   evergreen    false    1158            �+          0    109745    schedule 
   TABLE DATA               �   COPY reporter.schedule (id, report, folder, runner, run_time, start_time, complete_time, email, excel_format, html_format, csv_format, chart_pie, chart_bar, chart_line, error_code, error_text) FROM stdin;
    reporter    	   evergreen    false    1161   N      �,           0    0    schedule_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('reporter.schedule_id_seq', 1, false);
            reporter    	   evergreen    false    1160            �,           0    0    template_folder_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('reporter.template_folder_id_seq', 1, false);
            reporter    	   evergreen    false    1150            �,           0    0    template_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('reporter.template_id_seq', 1, false);
            reporter    	   evergreen    false    1156            _+          0    108553    relevance_adjustment 
   TABLE DATA               X   COPY search.relevance_adjustment (id, active, field, bump_type, multiplier) FROM stdin;
    search    	   evergreen    false    1087   k      �,           0    0    relevance_adjustment_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('search.relevance_adjustment_id_seq', 22, true);
            search    	   evergreen    false    1086            �*          0    106675    basic_summary 
   TABLE DATA               o   COPY serial.basic_summary (id, distribution, generated_coverage, textual_holdings, show_generated) FROM stdin;
    serial    	   evergreen    false    932         �,           0    0    basic_summary_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('serial.basic_summary_id_seq', 1, false);
            serial    	   evergreen    false    931            �,           0    0    caption_and_pattern_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('serial.caption_and_pattern_id_seq', 1, false);
            serial    	   evergreen    false    914            �,           0    0    distribution_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('serial.distribution_id_seq', 1, false);
            serial    	   evergreen    false    916            �*          0    106457    distribution_note 
   TABLE DATA               m   COPY serial.distribution_note (id, distribution, creator, create_date, pub, alert, title, value) FROM stdin;
    serial    	   evergreen    false    919   0      �,           0    0    distribution_note_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('serial.distribution_note_id_seq', 1, false);
            serial    	   evergreen    false    918            �*          0    106711    index_summary 
   TABLE DATA               o   COPY serial.index_summary (id, distribution, generated_coverage, textual_holdings, show_generated) FROM stdin;
    serial    	   evergreen    false    936   M      �,           0    0    index_summary_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('serial.index_summary_id_seq', 1, false);
            serial    	   evergreen    false    935            �,           0    0    issuance_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('serial.issuance_id_seq', 1, false);
            serial    	   evergreen    false    924            �,           0    0    item_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('serial.item_id_seq', 1, false);
            serial    	   evergreen    false    927            �*          0    106650 	   item_note 
   TABLE DATA               ]   COPY serial.item_note (id, item, creator, create_date, pub, alert, title, value) FROM stdin;
    serial    	   evergreen    false    930   j      �,           0    0    item_note_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('serial.item_note_id_seq', 1, false);
            serial    	   evergreen    false    929            �*          0    106733    materialized_holding_code 
   TABLE DATA               R   COPY serial.materialized_holding_code (id, issuance, subfield, value) FROM stdin;
    serial    	   evergreen    false    939   �      �,           0    0     materialized_holding_code_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('serial.materialized_holding_code_id_seq', 1, false);
            serial    	   evergreen    false    938            �*          0    106752    pattern_template 
   TABLE DATA               [   COPY serial.pattern_template (id, name, pattern_code, owning_lib, share_depth) FROM stdin;
    serial    	   evergreen    false    941   �      �,           0    0    pattern_template_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('serial.pattern_template_id_seq', 1, false);
            serial    	   evergreen    false    940            �,           0    0    record_entry_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('serial.record_entry_id_seq', 1, false);
            serial    	   evergreen    false    908            �*          0    106500    routing_list_user 
   TABLE DATA               V   COPY serial.routing_list_user (id, stream, pos, reader, department, note) FROM stdin;
    serial    	   evergreen    false    923   �      �,           0    0    routing_list_user_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('serial.routing_list_user_id_seq', 1, false);
            serial    	   evergreen    false    922            �,           0    0    stream_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('serial.stream_id_seq', 1, false);
            serial    	   evergreen    false    920            �,           0    0    subscription_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('serial.subscription_id_seq', 1, false);
            serial    	   evergreen    false    910            �*          0    106359    subscription_note 
   TABLE DATA               m   COPY serial.subscription_note (id, subscription, creator, create_date, pub, alert, title, value) FROM stdin;
    serial    	   evergreen    false    913   �      �,           0    0    subscription_note_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('serial.subscription_note_id_seq', 1, false);
            serial    	   evergreen    false    912            �*          0    106693    supplement_summary 
   TABLE DATA               t   COPY serial.supplement_summary (id, distribution, generated_coverage, textual_holdings, show_generated) FROM stdin;
    serial    	   evergreen    false    934   �      �,           0    0    supplement_summary_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('serial.supplement_summary_id_seq', 1, false);
            serial    	   evergreen    false    933            �)          0    102562    billing_address_stage 
   TABLE DATA               �   COPY staging.billing_address_stage (row_id, row_date, usrname, street1, street2, city, county, state, country, post_code, complete) FROM stdin;
    staging    	   evergreen    false    573         �)          0    102536 
   card_stage 
   TABLE DATA               S   COPY staging.card_stage (row_id, row_date, usrname, barcode, complete) FROM stdin;
    staging    	   evergreen    false    570   5      �,           0    0    card_stage_row_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('staging.card_stage_row_id_seq', 1, false);
            staging    	   evergreen    false    569            �)          0    102549    mailing_address_stage 
   TABLE DATA               �   COPY staging.mailing_address_stage (row_id, row_date, usrname, street1, street2, city, county, state, country, post_code, complete) FROM stdin;
    staging    	   evergreen    false    572   R      �,           0    0     mailing_address_stage_row_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('staging.mailing_address_stage_row_id_seq', 1, false);
            staging    	   evergreen    false    571            �)          0    102590    setting_stage 
   TABLE DATA               ]   COPY staging.setting_stage (row_id, row_date, usrname, setting, value, complete) FROM stdin;
    staging    	   evergreen    false    577   o      �,           0    0    setting_stage_row_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('staging.setting_stage_row_id_seq', 1, false);
            staging    	   evergreen    false    576            �)          0    102577    statcat_stage 
   TABLE DATA               ]   COPY staging.statcat_stage (row_id, row_date, usrname, statcat, value, complete) FROM stdin;
    staging    	   evergreen    false    575   �      �,           0    0    statcat_stage_row_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('staging.statcat_stage_row_id_seq', 1, false);
            staging    	   evergreen    false    574            �)          0    102516 
   user_stage 
   TABLE DATA                 COPY staging.user_stage (row_id, row_date, usrname, profile, email, passwd, ident_type, first_given_name, second_given_name, family_name, pref_first_given_name, pref_second_given_name, pref_family_name, day_phone, evening_phone, home_ou, dob, complete, requesting_usr) FROM stdin;
    staging    	   evergreen    false    568   �      �,           0    0    user_stage_row_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('staging.user_stage_row_id_seq', 1, false);
            staging    	   evergreen    false    567            �+          0    109544    bre_output_layout 
   TABLE DATA               �   COPY unapi.bre_output_layout (name, transform, mime_type, feed_top, holdings_element, title_element, description_element, creator_element, update_ts_element) FROM stdin;
    unapi    	   evergreen    false    1149   �      B*          0    104260    session 
   TABLE DATA               d   COPY url_verify.session (id, name, owning_lib, creator, container, create_time, search) FROM stdin;
 
   url_verify    	   evergreen    false    741   <       �,           0    0    session_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('url_verify.session_id_seq', 1, false);
         
   url_verify    	   evergreen    false    740            D*          0    104289    url_selector 
   TABLE DATA               >   COPY url_verify.url_selector (id, xpath, session) FROM stdin;
 
   url_verify    	   evergreen    false    743   Y       F*          0    104307    url 
   TABLE DATA               �   COPY url_verify.url (id, redirect_from, item, session, url_selector, tag, subfield, ord, full_url, scheme, username, password, host, domain, tld, port, path, page, query, fragment) FROM stdin;
 
   url_verify    	   evergreen    false    745   v       �,           0    0 
   url_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('url_verify.url_id_seq', 1, false);
         
   url_verify    	   evergreen    false    744            �,           0    0    url_selector_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('url_verify.url_selector_id_seq', 1, false);
         
   url_verify    	   evergreen    false    742            H*          0    104339    verification_attempt 
   TABLE DATA               ]   COPY url_verify.verification_attempt (id, usr, session, start_time, finish_time) FROM stdin;
 
   url_verify    	   evergreen    false    747   �       J*          0    104358    url_verification 
   TABLE DATA               u   COPY url_verify.url_verification (id, url, attempt, req_time, res_time, res_code, res_text, redirect_to) FROM stdin;
 
   url_verify    	   evergreen    false    749   �       �,           0    0    url_verification_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('url_verify.url_verification_id_seq', 1, false);
         
   url_verify    	   evergreen    false    748            �,           0    0    verification_attempt_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('url_verify.verification_attempt_id_seq', 1, false);
         
   url_verify    	   evergreen    false    746            �)          0    102370    authority_attr_definition 
   TABLE DATA               [   COPY vandelay.authority_attr_definition (id, code, description, xpath, remove) FROM stdin;
    vandelay    	   evergreen    false    558   �       �,           0    0     authority_attr_definition_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('vandelay.authority_attr_definition_id_seq', 100, true);
            vandelay    	   evergreen    false    557            �)          0    102385    authority_queue 
   TABLE DATA               ]   COPY vandelay.authority_queue (id, owner, name, complete, match_set, queue_type) FROM stdin;
    vandelay    	   evergreen    false    559   !      �)          0    102398    queued_authority_record 
   TABLE DATA               �   COPY vandelay.queued_authority_record (id, create_time, import_time, purpose, marc, quality, queue, imported_as, import_error, error_detail) FROM stdin;
    vandelay    	   evergreen    false    560   +!      �)          0    102451    authority_match 
   TABLE DATA               _   COPY vandelay.authority_match (id, queued_record, eg_record, quality, match_score) FROM stdin;
    vandelay    	   evergreen    false    564   H!      �,           0    0    authority_match_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('vandelay.authority_match_id_seq', 1, false);
            vandelay    	   evergreen    false    563            �)          0    102080    bib_attr_definition 
   TABLE DATA               U   COPY vandelay.bib_attr_definition (id, code, description, xpath, remove) FROM stdin;
    vandelay    	   evergreen    false    533   e!      �,           0    0    bib_attr_definition_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('vandelay.bib_attr_definition_id_seq', 100, true);
            vandelay    	   evergreen    false    532            �)          0    102201 	   bib_match 
   TABLE DATA               Y   COPY vandelay.bib_match (id, queued_record, eg_record, quality, match_score) FROM stdin;
    vandelay    	   evergreen    false    542   #      �,           0    0    bib_match_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('vandelay.bib_match_id_seq', 1, false);
            vandelay    	   evergreen    false    541            �)          0    102249    import_bib_trash_group 
   TABLE DATA               R   COPY vandelay.import_bib_trash_group (id, owner, label, always_apply) FROM stdin;
    vandelay    	   evergreen    false    546   (#      �)          0    102268    import_bib_trash_fields 
   TABLE DATA               C   COPY vandelay.import_bib_trash_fields (id, grp, field) FROM stdin;
    vandelay    	   evergreen    false    548   E#      �,           0    0    import_bib_trash_fields_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('vandelay.import_bib_trash_fields_id_seq', 1, false);
            vandelay    	   evergreen    false    547            �,           0    0    import_bib_trash_group_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('vandelay.import_bib_trash_group_id_seq', 1, false);
            vandelay    	   evergreen    false    545            �)          0    102222    import_item 
   TABLE DATA               q  COPY vandelay.import_item (id, record, definition, import_error, error_detail, imported_as, import_time, owning_lib, circ_lib, call_number, copy_number, status, location, circulate, deposit, deposit_amount, ref, holdable, price, barcode, circ_modifier, circ_as_type, alert_message, pub_note, priv_note, stat_cat_data, parts_data, opac_visible, internal_id) FROM stdin;
    vandelay    	   evergreen    false    544   b#      �,           0    0 "   import_item_attr_definition_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('vandelay.import_item_attr_definition_id_seq', 2, true);
            vandelay    	   evergreen    false    534            �,           0    0    import_item_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('vandelay.import_item_id_seq', 1, false);
            vandelay    	   evergreen    false    543            ~)          0    101967 	   match_set 
   TABLE DATA               =   COPY vandelay.match_set (id, name, owner, mtype) FROM stdin;
    vandelay    	   evergreen    false    523   #      �,           0    0    match_set_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('vandelay.match_set_id_seq', 1, false);
            vandelay    	   evergreen    false    522            �)          0    101986    match_set_point 
   TABLE DATA               y   COPY vandelay.match_set_point (id, match_set, parent, bool_op, svf, tag, subfield, negate, quality, heading) FROM stdin;
    vandelay    	   evergreen    false    525   �#      �,           0    0    match_set_point_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('vandelay.match_set_point_id_seq', 1, false);
            vandelay    	   evergreen    false    524            �)          0    102018    match_set_quality 
   TABLE DATA               `   COPY vandelay.match_set_quality (id, match_set, svf, tag, subfield, value, quality) FROM stdin;
    vandelay    	   evergreen    false    527   �#      �,           0    0    match_set_quality_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('vandelay.match_set_quality_id_seq', 1, false);
            vandelay    	   evergreen    false    526            �)          0    102286    merge_profile 
   TABLE DATA               �   COPY vandelay.merge_profile (id, owner, name, add_spec, replace_spec, strip_spec, preserve_spec, update_bib_source, lwm_ratio) FROM stdin;
    vandelay    	   evergreen    false    550   �#       -           0    0    merge_profile_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('vandelay.merge_profile_id_seq', 100, true);
            vandelay    	   evergreen    false    549            �)          0    102043    queue 
   TABLE DATA               G   COPY vandelay.queue (id, owner, name, complete, match_set) FROM stdin;
    vandelay    	   evergreen    false    529   +$      -           0    0    queue_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('vandelay.queue_id_seq', 1, false);
            vandelay    	   evergreen    false    528            �)          0    102429    queued_authority_record_attr 
   TABLE DATA               W   COPY vandelay.queued_authority_record_attr (id, record, field, attr_value) FROM stdin;
    vandelay    	   evergreen    false    562   H$      -           0    0 #   queued_authority_record_attr_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('vandelay.queued_authority_record_attr_id_seq', 1, false);
            vandelay    	   evergreen    false    561            �)          0    102179    queued_bib_record_attr 
   TABLE DATA               Q   COPY vandelay.queued_bib_record_attr (id, record, field, attr_value) FROM stdin;
    vandelay    	   evergreen    false    540   e$      -           0    0    queued_bib_record_attr_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('vandelay.queued_bib_record_attr_id_seq', 1, false);
            vandelay    	   evergreen    false    539            �)          0    102065    queued_record 
   TABLE DATA               _   COPY vandelay.queued_record (id, create_time, import_time, purpose, marc, quality) FROM stdin;
    vandelay    	   evergreen    false    531   �$      -           0    0    queued_record_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('vandelay.queued_record_id_seq', 1, false);
            vandelay    	   evergreen    false    530            �)          0    102484    session_tracker 
   TABLE DATA               �   COPY vandelay.session_tracker (id, session_key, name, usr, workstation, record_type, queue, create_time, update_time, state, action_type, total_actions, actions_performed) FROM stdin;
    vandelay    	   evergreen    false    566   �$      -           0    0    session_tracker_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('vandelay.session_tracker_id_seq', 1, false);
            vandelay    	   evergreen    false    565            X+      x������ � �      V+      x������ � �      ,+      x�3�tIMK,�)����� !m�      �(   �   x�M�A�0E׿��4z�;�7&lZBca��j��B�ļ͟��'����%����&?-	���JQ�C�����Y12�L&f+C.��[�Z7�5�AQF���r1���x�����Ĭ��3?;���E�ݛT�R?��9�      �(   3   x�3���4p�����Z��[������W�_T�Y��-�4����� �l      	+     x����n!��w�b^���qҪ��SE�����������X[��wX���rak��3��j�f8j����V�^�*���0��n����+Y�
����[�ի
�eֈ�|.HqC����!
�C�С����ª��� ��H|�ޡ:��12��tZ 1J��"(#��XP�D������J��	�"P��ef�^O��dh~�YZ��QI$�je�����4&%��z�@��С�l��x{I����ث�Z��������S�P��U9�G��e�Ǣ�K�uLr��Z�c3���hs%��x�8��x��sF�m�|�T�13�ʫ�?��p�<�&�l~���,�S{=�[��1Ք��F�<c)gMs��
�}`ԅp�V��r|龵��|�ĳB�͉q	N�w��ĉ<겥�cm�$����R�D��o�r��袟>]�ѣY9��0z���H
*+}����X����Ua��kmMK4j�hM���*��8�j�u��iXx���K��~��u�IE��      �*      x������ � �      J+      x������ � �      �*   4   x�v�Vp���I,*�rv��tN�KL�L̃��q���s��qqq ��3      �*      x������ � �      8+      x�su��tu��
�H,H-����� DE]      9+      x������ � �      �*      x������ � �      �(   '   x�3�t)�,K-*V��LN�+N�2��/�H-����� ���      �(   *   x�3�t��)I-JM�2��K�q�9����S���b���� 
��      {(      x�3�t��O�2�tJ,*JM����� ;�      ,)   R  x���=o�0��˯��.QB�#M�.UU��:N�d��*�}ρ� )c.�<������u0�
��{h�	��VI�^��,�;zk���y"m�n�y�k�.J]כ%c(ѣ2M<dqQb��T!|��<(�f(O	�`��A:�3 _���H���Jj鼍'�[`�I����+�T9(���k�d9H�^Gu�W�f�a��~�A��R�'��/����%�Sc��f�JT�_l_c7Rs*�X�Z�V���In�$�f[��j�`{���\��OV��2��YiI��X/À�������L�}��?��EE���8M�˨���_oz,K�i�$���F      �(   �   x�uN�n� ��W��	����@���``$��Қ��`g7M6z#��2�� u ���0��YSDK�j�bgv}g�!軅u\ɄNC��(�9�A%��
�Z��a녏~I�R���m����|/1n��=T���z���=�ɑ�g��9��͋����� R�v�N  �[͇R�D� �a�j�
�0V�|��^���
;?\�a�v�`t      ;+      x������ � �      +      x������ � �      +      x������ � �      V)   2  x��Q�j�0=�_!t��8�����d�.�C.��$�*�[J��v����dF���{oF�A���0�(Al�8�'IL�I̦�"��M����e�x���JKW)�ƾ��O��dpW��	�M�DM�j�!�-��r��L�kQJBo�ϝ�q元u2ںO��=�1��5���*Q)�Q�v�{u�,�{ϫ�yj�P���\D���T�Zl��
�b��)��R��`���{�tJgP@�h�O�?���S_!�&5�ɭqW8r'�����+���d<�V�M�p0�����(���      y(   d   x�3�4��O�I�L�,�2�44��,.I�U��ON��sr�g�&�(�����%��s� eL�2���Eũ
��%�E��9�
��)�9�@�4�=... k�      +*   �   x�=�1n�0Eg�<AQ]�!i���@��Yj%*�o�1��|�����xsj!pD���qt>��wDd����m"����O���d�Z���<H�\h`./x9��'������tZ���̚�{ ˸��ˑ��(�UR�sE���ۣ�ۇ-{KL��B}�w(����h���GE��s��M�������~��`�}g�      -*      x������ � �      �)   �   x���1�0���W\:�	$&2��8��9A�R�BKj%诗�A$���}�.y!�phɖ�H�v!u��ck�W��d/MN�C�1��|"D���r��
����-�^���G%��%㐞|���
��%1>�]L�����(��ꮆ��� �9k%��x�GY�j�q��j�?nPMmP}��?�uo��i]      �)      x������ � �      �)   �  x��S�n�0����6�M�RH�I*�,9��C�aG�?>���6��4�w���9TM4Oƾ��N����>�S8@��H�<ҍ��b���#:a%e��	��a�b��\��yFŲ�D���ɕ�*�Ԩ0$+Ȋ���bb�cg�25������,;$(�����V};�Kj;�v��{6�K���~�>�6�p�4�{� ?���������V�F�Y�IV_�		�R�=��;::��_��d[�Lj~ŔP�{zɺʔ��]ǂ�X8��C��ݒt���Sp5#WEU�XPI4e���z-jM(�/e���R���c�aE���	�h3��LO�5��+�Fe�m���m�ÒqON�K�շ������&ӆ��n�mZ�v�/�mZ��8��l$��QI8(~����n^>��7o����.l뇦��?���v      �)      x������ � �      +      x������ � �      =+      x������ � �      +      x������ � �      �)   '   x�3�.IL�.�4�,�L��?J�?�=... �$m      �*      x������ � �      +      x������ � �      L+      x������ � �      �*      x������ � �      O+      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      7+      x������ � �       +      x������ � �      $+      x������ � �      "+      x������ � �      1+   u   x�3���K/J�UpIMK,�)�2�tJ�N-RPSI���/�Ks:�$��EL8}3S�S�K�JR�¦��>�p�gPjr~QJj��S~~v1\���'3�(��R!8��,39�+F��� �1n      4+      x������ � �      /+   h  x��T�n�0|>�b[���N��)�T�*!6�u�D`Z��gh	!�[Pvfgv�˸$>MC�r���D�cU�Y��� .��c�'BFW�*�<��K#��E��٪E��z�#A��d��h�ړE�ٿ���2�7����!n8�$�?�qe���"����A�I�J}fC�:@z��Wf��<�%^8�Oi��Y���J�C��*Y�N��~�t!�s �+3��C$�+�wR�jWV��b�k���
�R-�-\�U����c��	�1�7�R���2
�'n������q��:C'��r���۴V�5aY�U����5�l�l�ŊΥWj#�>#8�u��R����1jT�-��i����ޖ@��EtGcg���ۖ�|WZ�]�q�B���l5�/N��:`6ypt�6����I�X�+S��Q���a���k �USa�� �@ݽ�?�vB�����+#ŧl����~�tu:Cjdl�7�����7��.o��ӭ��������\1���)�)������8�!���V���	����~C��7�ݚ��.�e� ��l3�!U!�
�Etq�ñI�[�Pg���Ţ��Ǘa���t^��'�      3+   �  x�m��n� E��c�hK�`-�Ƥ	��E۫�Y� �0HZh;�uTav�v�"��f�>	�����fEDRh��v6~��H�ܗ��-ݓ
���Y��Fj����ܽi��s��`�K�r�eR��P�agL��ԫ�PhR���h&Je��uSK�cx=�*���oq�`��Q}���C��}l�;+�+��W���b�UǌzT��ny��V,�u��Y����^W;&�\ެJg�5�p(�~
k�f��˘E�-|�j8f�w��v��C�s  ��S�K��DU��z5�k[x�����[�H��O#A��F����B˸��)8�������*)M;5��A�����,����$���;�bp>��_oSr��¦1<:��F�_!?Y�R�      6+      x������ � �      �*   %   x�3�v�tv��4�3�2�\C�8�L�b���� n8      .+      x������ � �      +      x������ � �      +      x������ � �      &+      x������ � �      (+      x������ � �      *+      x������ � �      >+   �   x�]�A� @��p
.�w(Cm�`��m�-�����v�����
ƾ`���s�b�9�0���Z*гK釻�Ҵ�l� m����M�:���u��:��H�z��]�ɥ�bX�8V �w,��髅ݶ���1�      @+      x������ � �      B+      x������ � �      +      x������ � �      +      x������ � �      +      x������ � �      +      x������ � �      +   )   x�34�L-.��M,IM�/(�LN�t���|�4�=... G��      +   ;  x�}��j�0�ϣ�0���K"9KM�C�C�S�,)��+[��>|�Q#7�e�?�
V�D�{e=��M�	����|��,^`:�a�q�-S:`�/m�_.�r"Xa�&�����`�,�u�I����'�0,�����Jj�\���)�,V�Ye4]�⠬Ag��H�j��������6]���}�K.���I��s�P�>��S�{Lo������7�f�Kj�g�n�����-(!�U;%3Xu�+Dʶ�H�(Q�����{�����iBiE
fe���"�s�p
og�>H��#��ޥfǎ�!��=ն      +      x������ � �      +      x������ � �      +      x������ � �      +      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �)   �   x�u��
!���7��M�+t�G��E0b{�Ժ������� �+29ã�Ƃ�BLw��Ҵ|cʩ�{�y�h�Y~̚E��V��
� 
3��	+�v[ou�Ԫb����&�Vg2İ$șt�v���[�Vt�1�o��L      �)      x��5�4������� 	�]      �)      x��5�4������� 	�]      �)   F   x��5�4�4202�54�52S00�2��26Գ�0627�50'(�2"���1�����Յ3$�.����� �{      �(   �   x�]��n!E��+��&��e�H��*uӍ;xfP)T��Կ/L�&D����úGc���!�|��mG�i�O�ֈ	l��~sv1��s���38f�����N�_��sY��;�$,ᕸ#�g�{����,����Y�!�]��Uu�̥4+F��}dU�ܚBO��F�)����H�of��ol���7�ƻr�HKt�<��e��`�N�4�WiW�M��Vl�l��$�����      �*      x�3�t-K-�,�H-J�L����� B0�       *      x������ � �      �)      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      Q+      x������ � �      T+      x������ � �      D+   A   x�3�t���.�2�t,*�L�I-�2�t,M��O��p��g&s�r���s�q��d�q��qqq "�      H+      x������ � �      F+   b   x�3�t-*�/�2��K-�2�H�K��K�2��/JI-JM�Q���IQ��/Q�ILNM�2A��
�r�&�f��f�n�9i�99@�9�sb^r*����� ��!�      v*      x������ � �      �*      x������ � �      r*      x������ � �      t*      x������ � �      )      x������ � �      u*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      x*   o   x�M˽
B1@�y�<���,w����K��-\�����E��q�6���^윑��yS�]��1U^����M?��W�ß�`g{��cHN�`Q{r��8��2�y�t��� �
V�-�      �(   j   x�5�;
�0E��e�@�o/�)��	I
at$&��������С��I&#r�X��a�,XvOK��W�jv&�
3f�Qt�=;�-$�}u��ńI9��B�,%�      �(     x��WKs7>���3M6�,)�-�긙ԍ�U�K/�X󡒻V�__�ϸӃ=^��@� ғ�7ͨ�6`+���p0�>��f��O��[0�����4[QEw�<#_�e�Y�`,��`m�(Gfs�m9�2�.���G.���hϳIr"��ɬ�d���^o��չ�[�2��)�摕}�z��D/�=���Ǐ�Q��I���#*�9��U�q���P{�����]'wK����Ŵ�0�{�s��FB`L^'�zE0{���$���
�I��> ����f-�l�T��o�qA*@���m���4�}��j���Qg�}P!1\+T��w���:����;��T؊��l�kKw1�����U����6.J�0(��"�̀��s2���#Ϗ���v�9}�����5x��߹=�*�c�����/�@���������Ga_���r�%�1���(œ#-v�HQ��
X�N�J˜BS�W�+w��Ӂ��]%N�-[��)��ٯ�D9��7UN�O����0����,����̗�ː���r~�����cf>��e�*�d�*�f��|�����sO���h$��>K��	s�����R�ǃ_M���[0��z��"�`���
�EI��[v� )	v�a7�h(��n�'ʫ��E,t]�.��Vp����PL�H9N6[43?i�I�ͳ�u����@�C�^+���V)?WW-)M�W#������ZN���`
��w#E�+�;��	`�=���8��ނîQ���AI>��":p�;h�ޘ��RJ� ����C7I����c����N�Z98R�k�eґ�����F����n� �T}�	w��Eo�V��+�i�~�ss�NW;�g���� �W�$a��{����S�9�,(hu��D��W�����Go�:��gп|噅մI��J f���'�'s^[G
��ݕ�c<�eP�Y�DqƩU�1�i;�gAi2��"ugL�B݋�P^*�qx����5j�ǎh�A�\�T��Zz"�y�x��E�����G�eoV7-;�+�𿣟�Ӧ�+oH�P�5�`�G��Fmb�ᮡq�q�򘰡�_���0�k�X��<��&�p�MD�'���y~��}�͕N������;���,�B/&�$���۸y���,�1
�}c?��V�P����=&�-���<G)�=.'plG�(|��q���	�(ˏ��ˌ�]x{��mH�|p߉����Vp���E�XlPt�Z�T����y��D�H��"��N���yo��y^zC��_\\�ҳ�      z*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      <)   "   x�3�v�qu�L�,�4�4�� �=... j)      �*      x������ � �      �*      x������ � �      �*      x������ � �      ~*      x������ � �      |*      x������ � �      �*      x������ � �      c*      x������ � �      �(   *   x�3�4�H,H-JJL�Vp����44QHI�,�L����� � 		      g*      x������ � �      e*      x������ � �      �*      x������ � �      i*      x������ � �      k*      x������ � �      m*      x������ � �      p*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      d+     x�m��j�0���S��׽C�1vj��qGn��v�冼��x��v3����bI2�2�杤��Ay����������2��9����O�s{I��O8gH�"e�݂e�PF�:1g�5�������	:���Aa�1�)�z^k��]K1�+*жcA�❷(>.ڨ���t%1�D(��?>�5g@t�>:����_M�v�9@��j^�I�B�q�;�q_�IS�"�]�b�IV�d��k�����N� :؈�6����d~�.      a+   I   x�K�/-*��/)��J-)-�+V(�HUH�+.O-R(�W��LK����e���$SR��ʒ�̼t�=... �5�      `+     x��Y�R�:�O�����0;�2�sv/�ʥ�J���Hr o�_�$����ʑ������Zk���a��S����hIW�"X�{�f�^5�;tX\^��'�9����]	�k�#�[������m�iY��y�]�>�h��o%�z���Q���i|�t�]���G�3�x��o���#~{��h��؜I���R����"I!����R���7��A���W� ���bB�/�X��5~����f�����om�
*��k���Ji�gr�fW���9�.{�@��ϸ����c�� ��[k��B�.� p�&�A�q7� ��)7�.� ^�����2Sgԯ��'�S�:�t��A�q�OP�֏���JqZT�N�7
�����ӭ�öx�z~��+��3����T~���~���w��m�Zz�_��p<��D�V��(�^?~�q]���=�F��pd����0�������?�υ��8�{{{=���{*�}�xws�����|5M߰�l��Bٺ�*�zQ���hl�H�R܆�~w�� �H8��z����u�v ��$� #i`\��N<_y�b�gnbnŷ�﷢���L0�jy�x��uP�F�t�&'����%v�+�F�.Ҕ�DXk�E]��4K�N��E֣b�+��+8���h{���Bb�,��(�����n�����笲�#\g~�x��۪fA� <2²ԯ�q��g�(g1���"�������,�^n�G$�V��M�_�A���.U!���[���%#��E�8e��'�d�%x�ce�5��3zJ�a�&���\��1��?��0�5#���[ێ�tB��y1u=Xe��������|�&$�n��`�E��Z, �-P���0��a�ٻ�c���" {����'؉J�r�^rx�>W��q��ę��l��3j�Y,�Ȱ�D\��4e��ϰ�+�D���92At��跠hٔ ��8��|J
���С��9�F9�U��܋�!sr�'�)�ǒ.���HHn�o������֠�y�;��h�":m��264{�`E(F�ti4I�H���yl�b���$�	�Rp1g
�`-��Y蒖gÏ6�"r����0�vTa�݂}[\8]b�rTe"���~pp���j�QJzN��\�[����) 9mq�*�d�<?�]�o{�$�C3ñߍ�t�G%֗o y�[���YY�(�C �QD���p�61t~����?���_�9oL���7�� *(jL����A��Ps�b�h��y �s�8a-�E�3ed��N��v�H�|���C^���t�]�챝y�ƶz��;���L�KGo�3N�X��OB���>�G;S��ccSfиB۳8yr���h�@D��Ma!ߞ��eݟ�⫝���/��@�̏�R��tYd������T�1��;*(��H����0藵�a��R:�-A[�|`.%&�2�r��3C�h<�k��T��&\���	0����1*̄!�H�8;q־�g���O���A�k�-�`��J�@ �r�{��>){w}8䕑�z	j�n��:R�h��E�'�)����O�%�PcY�"�3�P���*�I�W@�΄�yB�&�_��f��O+��@�D%7Y�Ɯ�ψϏN>�T}ȠɬU�=�ԿSjR-����*��n�1���BQ.z$��W����٪W�L�ԀASCJG'<�ӛgB~<F� ���ɀ�W3��}S�6��<�c�iyX���#Mi���D�7�8���?���{ʷc/'I9�Ɨ��tq��)�5����8�@ٷ�����[r�XR=8��O���r����=L��Y������w�)a4j��W���wH�jH�T�ҥZ�v�Iy��R����]�0	ݎ�c*M{��(��b�!b��7~���Si^�2�5&�`�ۨ�;���+�$R�����/>�ػ�IА��<(���fF�Vq{�S2Lz�˥v���*����!T�����J;k���_��Ԅ0��B��4�	P�;_�����K&M7�J��,�z|�6a�6Ι��ŏ�[������� �Z�      c+   /  x��TɎ�8=K_Q�)l@�O<I0����� %�,NӤ¥�}^��ݓ�9�B���Uu.�8�������bϤl�����莗/Y��>��%�w������~_��>q�1W5�?�G�h�D�,�,T��N��ʰ�YvJ�Pض�/��C:�BQ��$ڔ�U˝��D�FE.?+���_.�B� �F�&A<�w!�FC�%]�d�_n���[(�	��,�6]���=���-���d�4�_Q�ʻ�C8�i3͹����>'�2q	��I�=��k!������uN�R�;[�U&��d�>dq�o�,�D��-i[u���YCpa�V���=�Bz�Xҵ�M�Iu�������n�rj�q#�'���c�	��x*�d�й&�OԜ�zB�N.�%m�)Z��/|���\�狋L��}Y�<J�P_d�S�y/(��n��F����A����6<�NR��'!P�:���iK��ǁ���X-�M�öz���r����O��U�M��}����?>[�G�8�Ys�Hd���a���{;�,�:�`�H�9Y�M�[eLQ9е	�kX �;�@��E�:<�[�R�~{�Z�T���9���H�A���;8�k�pTB�z$m����B.,n@y����K
�lX�V7qZV�o�i��i8�\>n�,�Pg���a�{ �ŭ{u>�~/�y�b�)���>0��	��y���6�q.�fWk���,eb�Ǫ�R�	��K>d.廃��S��1Hz�Z�X����[>g$I93��<�A2w�´��X]�dYУ�X��.����B�      b+   �  x��T�n�0=�_!��k?��,�� k�m@��t"T�\RN�)�Ͱ�؀�l��|��ĎR�N�8Ya�(�I;4��dR4�5�%ۺ�H��ڠ|�i�¶z\,��'�p2�G���H$6s}m�]��`�D���\�����Q�el�s5sd�h1Lf;��R!�\�O�ı��7Q����s�� 6���&�+@`J��`�;�͘K:�;�G�X��x]J���z��3�(�BBC���0�[+j�8�*��g-_:G��^�%�h\HH���	�(?ՃC�'�-����EK���t�5cm6�����W~��N_򖀵�&Vyc�I�	6��h]ӛc�M��a�H&6cJ�j:�ǘ$4�2t�VU�5ΖA4���s5�/��?i%�#��HXO��sb��2�H�[C-����u%v�s��R����:*����
-��㧁���E�?���,�����Kq���g�2V���6l
���P�#+)1k}7_���'��d��G6XO�������቞�,K��*���o��T+d�A���K����Q�$,��b�g���f�T-!Q_�N+#R�,��s�N|!�^$i�z���,������1�(]Zm�'�����q�wA�'r�tA��iZ��*�~��+��}M2���T�:ڰ�E�G�"���u��k��*Vg�����nC@}�릪��ǅN�      �(     x�-P�n�0|��"_�`cH �&!7u��iJ�����^�,'�;���1J�,�O���)e�c7
�NkT�a#u�8abG�c�<��e��I��5h�� z�*�Q�6�����UW�7y��1t�7�d�jX�b+=�����64r#f9��(6�t���}�(��Q(adO�p�)a��~��1��Jϰ{q��2�->Xd.��p?���]f{��_v[3��2=�oXi���1��i!�	N��;�%r	p�A`Y*�دݺ�l[����@���h      �(   �  x��V���6=g�����O(�)Z`:&��e A�i[�b�����K�q&ql'�=�"�G�|$�m�ݺ�
_�EZ��z\¯�k�/�﯋���K�{}��u0�ʱIU��<��ZB(�NXb�t��d}=�|�ţ�q�ʦ���%�o�ZÊח�ѻV�����N+x���R��N�(��1�P�Y�SF���2h|����Gr�����h�/Ҏ��]��0�ɇ,�q:a$�%��Y���(����&�?p#���[,��,�5����CƆ.Qm��uN��[r%1�:),ɎXF�In�wc�k�ٶ�9��P�Jԟl땽=t9$tH|t6^��|���mhEw�eM�u	�B�;�R�|���沗��q�����+��;K��7���@CDG�#1�^��"��L�0(|��NVR9IZ�ؾ�f�(E{��1�a�ݼc�rHL�[�k6�'���%���{vf���s���N�w઻�N���0�f]/������4��*=Ί5�&����,9�l�?�?�o�Ɏ�I�_8[o&�Q�ӈ��x����3������x�����B��/[����?��ꘝ�jZ��yߍW$ �-�%���Z�R(�{K\���w�ϭ6b�pO$��\���$�gPG.��e|M�OaK����7����D:�}^�+�9�+�҆n4�2�}2� Ut8H���Cy5Ԋ[i�,�&�Qa:��_��-$O'�N&���ۅSC�H��p�������������	l�S{��n)���
��-��"|}{��gCzW��&
s�x?��&�����|J'u�>�����ֻ�]V�;"��p��S�1�/�ިh��o�g�@��^����]6�ϱ�����?��x[      f+      x��}}��������u)�$%�q˖��,7��%UR��, 	��I�@�zR�����.�x!%;I#֍H`v�mvfvvvfkm�����x�݈�+?-|q0�8��`�4�µ��~�iޯ���0��kg~8�kG��[1�n����?� �y���Hⵋ��î���@�#�}���,?;"��K?�m� �_�G��^�͒^��y��iߧ���?T�ǿ���8�YEh�g�#�-�i��S�W�.��ꍣx���=��;���눇#�p �$���&|�q9K�ή�zDh����t[��9���"�� 3��m_��CE��x�{14��4�f���z3�w��A�������ˋ�x�(%"GX�/҉/��t]�R�/�E���a������̊�#9�R��d�o�#?��K`�&�t��I���j�/	��:b�1
z�F�x�y�Ni�-���a�&Q\������@��������� �	�7��T}���h介��~�`@�.��O�m�GH1?uκG�G�!L�؏��0�qC�0�Y��(�������0�&�I+�� �Bg�~?�����l��ط��~�(�7� ��
�Oz���H�^���V���xɳM������t��� ��1>@c3���-xR�Z�Cm
ߑ�������y��b��ۛO�77�����!1D������K���ŵ���Ļ����C1��;>;����|F6v�z��q#�ʷ�r�灟�~��:9ߟ�}���қG�I:���$��~�����4cheL��y���������KFxi�@�Q�q�Ds��f�Kxs���4�c���?�����i��8�f�5� /���e���=�C�Z��,��O��]y�Eԛ��s�+���S�I��]�]���ǻ'�x8�ht<��U�{I#b={ m=z��� ހ?4{/���d����by�1�J$����ܲ�[�#�3Ȉ�X������bQ˶�EM�	<�{��,���F�d��Ӈ
�;���[}y.d���GQ�#��f�a���/��`�Ӗ��A�:�"�e�^@_`.��p��F���?��F:� v�$�W��P���*���ix���뀡'1�B?a����[�(�x��� �Y�R$����a�V��v_���=M�D�M��H#�!^S�o��H(��j1�i4��2(�'w��,7CS;�uh��}}S�AmC�QD�Z�/���r fj��$�{1��(M�`�w�
�ԇ�G�GČ��ps��|'!�]��$C<�.�cv�d�����{\u�L�!ʤvڶ`�-�@!D���J�-8~�ؠ6��P�޵�C�N�('����8��t�{r� �tb=;<{y$@;"]������ӿ/�4כ� '��^���U�«W�ԻkT\з��� B3i<�$B_t�_��htCCB��,)�;bS���i`̱R����G*9P=� �FAj=	��7�TR���4��F���Aae���m����\�#����]� ̈	x1lI!��+�����ĺ��=2Ԛ��s���u�@i�R�
����YX�9'���Y��������ٙ�v
Cy�Ն��v��Is�QQ|���쮐6���%�GP��!erw1i��bVa3Y����<�lG.6�1��-�l��+�d�g�����i�_s��e^��w}�m��(�T��r�V�c���lD�Gӑ8�r#@'���b�|O ��]�sl�;L����n������*�ۺ'��m]+x�N�{��Ө�����q�*!i�'��M�����qMh[��K�0gZ�x�z!��]	���v%"��"�qھ���Xu3Ky�\�LdZQ��Ӷ��YQ������y �%OZ���,��/��ǋ�g�~���*���*ڗM4�K�-͟��Ӛ�(t�Z����I0��E�d���`�ė��qˉ!x^.cHﮖ/�*_��6�\�]D�%�,[B�^�� ���N#xFTn�%|��"kZ�����Ma	}#fQh� ����x��P�c����-��AW��p},B�q�����Ex��I
��|�¦�H��1.����Dx�F�q&hB��pꇗ�DDc����c���vL�f| �0�>tC.S��:a	�ҋ ��`��~�B�zqn����C���Kc�����4�r����q�%�so�[�l��GkP`{� 	},�7=�,?]�#�w��s�^�z)��<x�=+���[���-���s��ȱ-��o��G<�%x����dP��5@A�>�9J{��!��+G��+�FY�k���n<����N��9�|�aa�+Z���2�q6h�b0 ���8�H����F���B"���pH��w.�ۇ�O�w*a�q���
��E�k��u�y�j�mklsrs�oV⪧,�F�U�p*�U���w�Vޞ�����OE�{x�����	�U�AjQ���[��oW�|�3Uv�~8��g��,������V�����w�ꢌ!�-)�?Vp^�a�y�|�?�{t	"�����~�n��#�~T�:2��S�|������-����7j�*�|៊/|����k�?k��O}��l�ʿ����WP�sGk�|��d�}�=~1�BQ����1 Nڭy�s�3�_���`0�7���xIr�����j�C�Ke.az��kX��Z�Ŕ���_h?�f~?Z����S�C�-W�6h�t����ks�4Y�?)9�L�Pf~�x�h�z��t�L�%�S%�i�wL���"��|�����$��j�Py#Pc�Pʶ��_�9���a�vc�J
���qٰ��E8��4tf�?�f�hNMS�]���ǻ��ĩ�m��s�)���s���ȩ:I�j^�u�z�x��O]�A�X!����A]'��'i:O�76p-3	O�$�Բ�_nDso�����ލ��m��[
�j�Ha@��/�yy�¾��=o����A�rGI�J��H��R�OȬr�5�`��a���q�̼0�b$)|#���B���o8���1����|}&=�.�I�s�����tBM3��+���E����^0��C����H��Կ���!"�T������nW��¡	}�g���<F���n='G�bK��4�Kx�Wܧ�rƜ<ޥβd�o�K��K��^��g����e���]zAȗ����1Ɨ�ֿ���I���p����S� ��l�^Ac_X��O�k.�\J�W?A@E֥w��9�l�=�Xl8[4R������Pw��3�|����˻j���Uu|�����3��ΗŁ]�����C=��=�5"�ʙ(�E���pdC�c:7Vu3ss|.^/Bd�9©*=�n�[oR�UrX��w�=}������ L�Q��6�
��1����*����«;��*^�9?8�n�m��j5��3��7��V�����p9���V�x[���`��S��L�(�r�(���E�N�=��_�ba͢�0t�5?��9r#]A�laj�kU�揦�� |��JDuS�ȩF)���//�о�J����(�ͣ�d#�E����&�dK P��%J!�y�ϱ���f*��Q�0�|��2_��F�Pn$ײ�t\�5Jά��z��!�B�{Ƙfv���~T֮�W/��"��'QH=?�/�p���(����}���Q�3_,�s�?�����ђx�.Xt�F��W�F~$a��kIyl����^xI�"�n�)���;�$���	ֺ˺�I0��V}�PŚ�+J��xn����Tl����d�j���v��6��i�+T�є+ׁ���u�?��I4*����H���	=����.�w+ײr����{q��u�B���.DՍ�m��$B�5��՟Y9][-w�X�0�.c��.����f�%e�;�Ъ�d�9��v�t��O�W-�W�Ո�Q��'���%V��,Q�W�[k�2�I����&	��7;�m��J��t�l��	�����`  �0F㚔4kb���A�rZ�����y��4�,o�.�i\Z��    ���y�*y�f�p�s/(����?�P�%o�Ʌ��Uȧe�����|�|�]+2�����U0]b4z�9�j�C��ϕ��Yp�"l�Ԋ8�ƫ�r��ܭr���uFf��UNl�*����2��e>\�*��Q𖃾�p�e#V���K6��͊��vnI"�9���m�%E�Ff1�Fdx&ק��&qŢA��vZ��1�R,�m1����"�lz��gO��nۊvbV0���*�M����>��j�]���.Pg��ܢ�b<��пv����wJp�2��'t��֥Sa�hG�-���v�|�t�S���}�Ίsg�y�H ��Y���~셄���2���橸�v+����n����|� <Q4gÒ芭��$olg���G���Q�w��]��R)�U,�L�P�B)��<����]Fx���>I�&��tg��.���o��7G�5���K�"|r��_��t�_�@�vN3G�n�������$��K��N��Dz��=�S�2HR�_K�쉡���˅�˵~T�-b��"�3���]J/�57���I`��	#Z�x��aO3�9�/���a=���`8�7 B�v�P$0���+g{��,��s4�����9��� ��q����~x&��v�K2!���6Mx�侰B�c�7�a�\�&>ƺ���+h?!߄�a5�ځ�!����`��d��]YtcmP[_�*A�<t�HqG�*���'ԁ ]C���801 �PuXLI�DwW�Ndgx̒Cqn	T�`%~M+�5F�z�P���C߇��`\�iz�;�;?=>��s����Y�����Y�!�������㹼��>�w)<�N_Q�`�#�n��lk��)��C�A;��XO��K�up_W�zJP���pAğ�SZ��j��t�x��T9eh���|�	Ţ߇���ܨ�e�u!J��R�}|�N#7��Y�Mȭ�0t�S�C#���Y��E�_J}l
^hu���A�v�8!��չn��[��/s�O��}��9��<U�3	��E�SK}e'��^���Y���SU�@}�sQ����KN`]&uУ��h܏�
�}
ä#�����,�����ϠbXMY�S@�J�H�ŉ\�a	aL}��~�SD�C;J+o�\��C?,�l�W{��U�K��-��K��\$s��O�;�"X��;�5�j4�写-|öj�9��<�L�I�F����������X/���w�Q�5���{Wm�f�Г;���_0/�*�k5a9����~��"1�&ۊ~�ϭΐ�h_�����5~��~x/�p�~��ZcU�Ko��(�S 6Aq�Pc�{#؄o"3��|��4J|A~��>����޺e��Vl���(�M�߲ݏW�	`�f�V�[��Ɋ�~+���[����|楋x�V?�e������-X�7�l�7u�Ο���l9T����T��O��b�����U�߈��ՎZ��)]?}BtM�Wu!�N��v�kH��ۇv�[�]ܓ��)rp��A�8�Yh���5������Y�%.ƚf�� ��=X�_�>Ӊ��B���8��z1oA�p0��Hp�?T��\��կRC���:F@u��1-63"q�B�y�k!R��mF@2��������������=M~)&��o����� ���NWb�i	�.Y�E*�x������(�9x���K�J*���)8A])u�[��Zg�1%��v���U��م�|ߌ�����@2ͣDv�C��g���՜}��+u�8}&����^ӉE)S��ϐt�����v�r�n ������0U�c=�������%pJ��@�Fv��]Q����UeŋM�������g���A�;�P��[�on�e�7 �4�rY�P%SO�X���:R���S�����A/3�N����T��O�?�QZ�CV�~�t�Ik3�D�N^�\J��
���A�~������q	x|�����36���^�]�2�z%^K[��?momm>|.���\N����m�����jMu�O����^LM�OJ�]R0Z���W�몐Q�Qk�,Z��o߄t0�Ѐ�?҆���)��K�$x`Y�Ǭ�4�Z��w�Y�
�3��P�(Hx�����ā��s��w|���{�����9X
g�sV����dB�E=��v9Ҡ]�$t����0�EA���8w���a��+M'��1w;�� ��ѭI�W���"1k8���~2��X�G/K���g�[�ɕ����J۪>ۺ&���{�m��3׺r���S1�`E)�E�U�i+8�[�L��%���/A�NJ�'ʼUa$?��¨�єt�f�'���|ԫx��y�_�6Uڗ�t�
�̦�`L��$c�D�!�[����j㙈��������S����w�$���_��Qk�)>�nC׳�F��%�r��U�.^$}�б����4#�8�d�W>�Y��	�5tw>W�z`�K�{���Y��ꉫV~�i��4Ht�F"ې>y�����,r�P���g��o�:��y��̵e���H�^�t&��%�Q�����e��,V��y���PwV�o(_5>k�.�|r�*��V�|L%��|zn�;+4��E���}��H�����j�k\M��2"�L�8r[�N���>xu��|�M���.?P��y��B�ԩL���7�i�lCY8Y��Pr/P�b�ސ��0�͢pz������� ��(9������ޑGX�"�%^�<�?~u� �GA_z�RBg\F��������0���O�������nݜ%�K?�����pɓmUC�R}V9�4(Y��/ϙv��s(������O�ܻ�F�yx��ӽ�i�8=~�wz^|������Ɂ��6]�Yǹ7�-�ӗVN���e}H,�ޜ���Su�xn2wD{���o��n�����z�P*_�g�~���Fݻ�rϾ�.+'�����_?{��$+��Yuu[[O��̈́1�o�'_?Ί�`e�^��E/�E�$B�%N�C�h�G!1Ɵ�U��ׯ���p�B����9EG���������V�����]��пbT�p\.��i����c������0J�nD�H��t8�`_� �h=�{��臷/Ns/�����f��9��;?<>��9~��`_�%�1�x�s�2���?�����{����ښ��q�:�j�,��90�E%uW-���9��N�@y�� m�dw�Ap��.���TCK_�hm�@�K���G�k��X{�2��-��,��:>}upz��~'Z��[��i�#�K �Lw����\H��',�L�m	����اԄ�틋�vG�ް˞����E�vR��Ucq�֢>TK�U�����y��Ak���^�k&5;?��Q��oJ�	���VG�3�T9}DjЈO��Jm2?��l}r�n���Mȩo�d�X�ƪ�2+���hR^s!*3�k�޸K��*�J�-�1��ߙ�#eW��I��[�v��s�P}���ۦ���6�2��u[-RM(�:]y��n���`��o��(f��'0���'�{Gݭ'��x/�	�9�8�/A�ۇ	�&`����$�h������Di�w��&K�P[�*̞�{@܄�'sI2�I	{L_��?�
Yu%ap�Y)R�1��J�H#=*C��������B�W/R��I[�c���W�K[t��
�$���\)����~����f[❶0�J�q;_�rSGc���h�M'n [��n;��Jx�˓�P�(��B��j�e���-��x���<8�k�LU�d �^���%OI	jW�d���.�|_;��e�Cg�z'y*E�q�y�̤��W%������⇣7���4$��D|C�@i��&�Z�G����#WdBn�uNOa3��4�P�E�;���)FS
�U���"vTbQ�`�t�8"+W~�4����H��?��u���;��?{����}����l��5����ܘ����[���_:!h��CC��u�a2	�����N�>��B�����T�>�'쵏    hj���F�9�P8y��c�G(Wh��z�9�<g,�Ia�6:��,�B/��	��Ʀko��Ǿ��3ZԺ��\�z�AK��"c��r	�k&�	+���"�l��Uh�TP�%�</����ak(��N��-<Hv�a4�S���O$�u�˗������J]ұ���E#�E*��9o`U��'�����԰��:I���ϪVFөO~~|�W6�~*˗cy �1�͵�7Ql���H1R����LQ�а+�E6l��$&.~��\����?�}8�a���t㙥q3g�
78�4?�Taq���e��_��A��b|�/�H\��b����Vz�q�O�*g��`��2lr(�M^��6l1U`�ÿ�V]/BhX��P3��Ib�׺<y��u�+��r�+��	�z��Y7(G�ΞP�Ϭ�l��LB3N��#����Ֆ=\�:���GT��;�.{�Tu�*ر�B�*�+�H=Zn�\N�d�9g�1���G��W��C�ՒS���_
w*�>��lR�Z��0�ͮ�|�Uul3��Yi�����w�oI�c����G���z�5~5(j��]�W���:��ߛ46O׻�G���4��A�b��$�^�%#�]�U��j���?u��]�����d�1{�����)XV⧝���5 �xc��uc ;�{�B����:�qP�z��i�7������C��&Ӗ�AkJX��/m���K/MevGP�R���	v��?I���4��jF����@���)L������|��I�5ND���̆��u:w�N����������>�8.D�U�a�~�)�Ӓ�����B:��UI/��e���e'���޹�9�i(�F��Z��)cI���B��F�f��e��G�zd5/��"sRO�����:w�Z6�9A/�b=4>ǆ�k�>��J��Ʈ9�]e�[�b0���LpfF�O��iM���%�KG�$���E^�6ۊ`[>��=�Q1�є	��W��i9�h�H�a��-�p��B�!,�Hx[���ra�JUl�|�nQc��l�r��g�c��ڔ�'Co����D�:����#��c�'z�O}�u|�����1������Qn{�=���3
���C�y72��q����"���^\�_\<zO����%��N���=�>{O��D��k�_i��3k�U��Y����C�s��{�y?��Q��e����mu�"�a릔�����ԧdHۨ�����`�o�o6/�� �_O������`�?���$��ܙ���>ݙF;�����F�g@h:��t��7h�K����:ϻ�P�u�B�ӢQ$�il�P҅�VO��I�)9VR�� ���p4N~$o��o�6B~���f���"���G�IQ�-k�H����ؘ�l�ѵp��i�P-ts8�iIp�����b�|'�(G͚�R��~b�A�
�Q�P(�?�qܻu-�o�˗\��˗��u����I�pܤ�^��D�&]ǯ}�4����񷴶�I�����^0� ��PH�I��=��?PH'�L�ͧ*�Ý��2
�M�Ƌ�8�N1չ����-SwK���b��k�h������Z��R�I�j����wK�偓�Ș��9h����vW��-�쁁½jK��$��wr1�A�,fY��
��E�	���q�D*�ֶ5B�]�������ϟ�׸Dg���P�
�1&Q���㉞�S�t�`��)�X`���Q�	�hHa�i��*&��ѝ�ٜg�/DgPx�h���N����HU�`�p�,����c-�IQ]���ދO
�eN-ū�\�Jf�Gٰjj�U[`�-d����h��nzI���
g��2����eD�b!x�8X� e��� ���^�G���|0�
�������*�����i�#��!U�I�C�]�� ����lIR�zWQ��0�iu�.7s�D���E��_Y�HYaҤl��1�H9Ÿd��Xu����ۢ*��f1�+��]=(GBE4K5ō�b��1.��P������ˢV��I񑛮
�/}�$�stm��`��Hl	�>��v�i0�ddW�����t��g�1Wk��=|O�0zt6��P	���[`H��4uA�t�q9���DH�|�'��o=
�$���\W�h�o
H��y���,���;s(s����\|m�I�_g]��KY�nk6ԅj�X�Zi4RD�.I�%D6:�e���xx��=�R
fm���=���ٗeZ��A;�U���JJ� ZE�1eG�<���90�þ>§�#���@��#�h1=�l���Bgk�����,'��Y�)|E��,Jj
]G�5�����:[y��7/�<����d�b+�ƃʭ���Ɔ���j��22��(�$���^xӎ�ޟ^�i0�O�i���2�%��b#}�{�{�$� �0˸�dVa�"�����s(	'-!�4�oo�3�X��vP0�ƭ��M�}��/A��9I�iZn�{{eh�%�}J�+��|����҆���{.�;&i��J稯t3倓�w,&kA5�t�x��y,��������S�5�������a�BysU��ˉI�bc�ҀJ7g9�$c��o��gk	ْ�'װ� �M8�"�D���������������#Xt��Q��O�0�Y��ȟ��*�,TVcn�קF�2��U��/,)%Ł��ތ�����@Ժ��L���z�{<n�V�͗�_�A^b������t��Y����]j���{��F�*��ǳ����>f��M���~�`j��]3���h�fh�Di�ln�|���`M�H:��}����K�F�d�˶�ʟ�����%�~�Ӳ�eq����_� J%��~rr��ޯ�$�2ƨ�&��.��8��'�PF�J8|�)o����drZ����>l�A�����,�T,+I�fO����f���/����N��q6�xùY��x�5��y��994T�Ý�6�u����
s�Y�}��ȧ�0���@JT������Л}�urN������m�4� ��8������ؕc�c�
U~�x8
b��������K�Q�AF�v���'P � �{bq�w�p�'� �:>����a_�..�V�=�*�p�3�hҠ�b>D�N���.��%�����x�:����|��|B� X0��Ȋ� rw��<�Ţ��Z�s��rո�(��'.��=���r�� �evkN�N�=���
&��o[(���/[@,d��GW%��6ϳl�R�Z)g�����Y�HgU��Z�7� �i��S�),�Ŭ�h��'=wO!���6�Я�����[N{zg�>%�?\��ǥ����n�|�R�����{��{�K�j�d�v�pJ#�>H4�O�h�Q�^P5�Q*�jP��.�k� 3���\�K��b�0<�eU'�L�b��[K���ji��ȬP>��"�����\�:Y*����B
W�/�g�l�j�������0!��:�@��+�vNJO�d��3�:h����3�L�����I)�L�u
���̧Ϙ��K����qe�F�zC�p�a��Iፊ���6��Swp��μ�|]Jh�3�~\Oj�'��\��0�;�ݩ���'���#��֏>��(��Fv>���,e���T���QnAj]��w�{�/���r$�D$4��#��ԧ���/��|�_�TCN>7�ɧ:tZ	��7�'��sxH������@u�(��J� ll@�Z�*�ж�C|LB�LnGNDi��ǭ�GA>,��w�}��@A3ݝ�|w�:�Re���ɏJSx�D?�U��&X/0^}2�`�@D�q\ ]��?�a�}.]bl�9��܀�f�0�e�\��r6�B��ly@�HQ: V�����P�#���E��SҼePd��Tj�@�F?v�5�
4B�����䢠��)� vO
Ѽ2��F��r�tsv����i9��
�ÊY�0�m�\I��	�pJ^6I�U�S��K���k	ȉ��5��F�;����K�M@�Ʋʟ�E�a��pj,c�]wR�:�"0I��9�Ш�T���Ӑ�YЪ    KrǍT!n��`b�p���ో�=�e+�m#w�¢[G�.?�Rp��F�v^��aБ�3Z�qk�/�^Y�E�%3 �_���<H���7A�������O#�IZ��&2���[/���7��B��!%
Fa���HƓS�E�髎f����T���b�ץDsqǁ:�>I����&b��c����x^OP�n�ǕʋŘ~����C�3O)���^�^�^�s�2���2,�U]�RE�
P��<����fV�Ca���t��Gѵެ�E��HF�����g����G3 1"�ަ�%
���Ǳ��SF�� (f@��(֏�R���WL4֕���0�^sg�~�)+`����{�^��G�+��<ib�(�4ʏ��Hz�D���'������ ��aԗ�Q&��e<)�\ux[�w�;��zĚ�`��8l��[�k�_CM`� (Y��=ŧDn �W�a��
%�W���X 9�!���pi3Yz���,���	A�/�Ywq�T4���^k�m[6�R仢'�c>^����_�Lo��������oz�7F�v�1��+��z1�Qϡ&)+�^�\Xzp0ȑ7�]@z�L�����9�~������:���,i��߃8G�;]� =R0�(��E��7���$t�D�K0��B���T�7�7^x� eP��G8�E�P��DR˭Gi��p#��OK��GJY|Jѝ-�.)EwBYh�BG�kJ��4"A��7������*C|�$�A1@7Կ��Ҟ#³h��7E�O�T�����q�j	��p���T����4�!Go����1p��e�Ig�)OT_��Ѝ����[�v6G��AGq��`z����������60A�l���f�c_�B�����{��b�n��5_��?����p�\}6iز�G�Ӳ�?<��ox��_��|�����S�&�_����;/j,��DĠ��n�=<�����ß� �A
�Ә�V�
b5â����l�4��K���(+���H+��hKD�m:��-:^"FW�X+HWG]*Jo��\��
�g�*�z+�%"�cP*To���j%�`��Dk=xN��l�N�<}�Iƞo��(L'�M;�\�)<�Ap���|+�6j��:��y�K�Q��&6Ѡ��7b���h�v�L�d���٫7�rJ1<��`5s.��?Ѱ(�������˜1��QXef�O�
g�n�����|��h�������ƞ$maس�t?P_�̿�a4�}���L<��7��eR��-��Q,e��@�W�̼���j��:��%�(�ûwq�E�N`Rۿ���d�)��h���V�{��U��*���
�qn����4jOf�)������ŏW&~x@š^��NC\�I�3������)|V{la�Ls���\�̘�mחڔ�u�����ޫ�w��qǴ[�m����܂�[��`��PՎQZ�8���đ\j��J�j�`k�nDV�
	�
1fBk~�D0t,�¾����vW�Ky��n5��pT��S�+妔<ݽQ��}���ɫU";��%�ǯǔwS�_�uXy9^粲ix;��a[+&Ag�5Y 3�V@�Y��ٺ���[��V���
8�u��~IC���_��(	��&��{�C���� ���؏�pX֞�3 ��-���z����i�ʠ�V�j�/��go���<��ԋ܈�%����>�\/1.��M} ���|ќQl����3��ظQP9w�~eF�
�7G�� ?>����b�<�{���|;���J}�vź�Hkٜ]rҟ��2�^�Om���f<
e~1w�/y�a�C����orA��Z�Z���F�:�Z'f5�Z��1I^�i�2~M�8={��(ne�v���j!{k'���k-�'�y�Zm�ZX-L�!AZl�Z`S���³Q���L/���J`�£��҂���d-���H@�f�J0�B�B��oJ 6����� �;�ӭ��(?��A2���d�q�;(�bi����`1��_�X�n�^��D3�-���kH��m|����	��Vf�+�/3���n,r����>��so��7�ܛbr-��b\�	���e}�8Ob��k�@P�8n��+����+������Jw�(�$tiv����+A���qO��HG�I[\yq@�5�|�M��!P/`� B�~x�QHI�>�drޛ�^�S�dt�<�d�C��?�P5 �By'2�
��������r�Pv7t�]GdA`)���'�����j��T$�o��BX�z{c�����z�;��_?m��_�>vZ^K@��A�}���*�}�5��fq�����BR�ݩl�����ԁ5�AZ����.���G�GK;�n���=�޿�+>�ii�T7����mlը{�Cz0p%��px����7V���Qư�
.��Q�����h�lP厑�9��s�*�:B+�uܧ��D�Xt�${ͤP�^5�BO��'�"��乣(������h��SG8�8��*���f��7���	����۳b(��w���a�ӿq�e�8���J�m��јw��,A��o֖�@�����M���b/��k��ug�p��r�z�CRHա�A^�:h�1Nd�l�N	 /�_�Q4\�� %�h%��~��̽3V҈Y�}W��s��Q�k�8)* �_+�ժ��&���4��5o�H�Hؼ�� `��Q\\����~Eۤ|��I�wm$0�a
��U!���#���Za�Z����ug�$�YKg��CfK0=���.[*��Pd�dsEQz��R��8�رf>*`�&����,�X�O�&[��ʻ�{�1��yE�&ኤ�Z�"�{;*F��s+��(�&Y�>濺�m��r���h'�a�4vf�i��F߾�E�1�S4AЊ�Ɂ�����	z���(�^�,��f<�Dŗ��D_����#f8	 B�$�4�Z��U�5��e�c>ʚ��bJ������]�?�pll��{yʸ&�ڝ]�{�k�������XI�+�yW��>p���/�����r�s��dS=�4�=l�#iڽ��'��V����t�yt�ؑ���k�Q�������Ż�?���g˲�-�Ev)�{9��M���_c]�4&֗�v��٥�~f�'Wס�"4]/����(� L��h�yP0q��4�T�&�ϜX��F7}��y�LA��$S�_���Z���b���W#b9�lK׉iy���-Ы�)omrL�'��>�9��:'p�9�r�[HׅQŹq�IU�Q��t~Ы�	�e�Y��dh�����P����T�v+�uw��<��ӛ�KG����v���HW��BB!�d�H�%.9^�2�f���ڊ��y�y�i$�b�F����?�\'��Q�gX��aB�:�T���u鍮'�_{W�?=1
�x1WC�6VءsW0��G���ӛ'2�c��0�����Y[ٜ�~_��R>��#�ù��/>�V镉�	�K3P(�RiE.�&���~�%��x���U3zDyC�'s����Iٷ�$
�*��u�#�&��lQ���֍�
���ƅfs{ksm���T����@��<�;.��b�P�W���Q�!
���>��QQ�&�O/�|�: �Ojm& 7΄ݠ[L��r}�#�6qdz#��<6�E1@h����s�/f�bs0�`Ҥk�R�/Hr@ޗ�>����>!��1f	�J%o�����#`�x(�w�Z�9�l[E �>���c��.���j:b�2?�Q�)�!�`{ʈ2�4붺�S��5O�t���2țF���ڡ6�{�.N�1%#��(��!ϔ,�R�3e��HIc<�&c��h�G��w����1����B=�,�������oL�|-���/�#-C3���ʽ�����2��Z[��{��Ģ���e���`d6i3�%	��(n/8��1�+���+L����V��7�xO�=77�M�9q#�EZ�� uŗ�tV�V��g�XԲ;����p�sdǼ�p׌_z(�jV�V�c�]j �  ��=�:�T��e���^i�-	l�h��|�X�I�hЦ�t6K򂶠�M�`�{B�B�Q�z�TX�t��0��h��M�ֽ���������X`ʿ��1l'����9�Շ�wz>[�u��/�������@��lA�p5Ӛ�E@���Ӆ+/���_Οu9?!��y��*�쩃$��~�W��-�a�2"��t!��fq=�So>��o��s�ܗ����idd�+������#ɾ�d~�!�:"���Y���ƴ�¸��@Fv	�9�t?�g��F����~����]9?���|��lC�K���'����G���x�OL�v*�6�S.��j���=ˁ.��A��U�i�c1����8�Ģ�D�lol�=<����v����������R�F$���J��%RC������N��"��U�-�ｘ�Ƌ���a���Io��+d�w�76Q[��"kg2�@�r�e�d����+�y�eD�M唪�Jk9ۡk�SAMWh!�%���vN}VQ����#ʓ�أ���m_���� �u,���5y:�GA��y��Z���'�/���0�o��$R�覞t�Hb�}7E�zI�?[������8�C��x_[�s����2��z���ח�A�V,׼(j�Xk��[v����ĭ܀;��L�K�a9��=��Κ�E����-]Ƥ���3���������X��      h+   s  x��Ym��8�M�O�{��!tm�|�N�~_�c���J����+��l����d��K;UM��N��z�����ɯ���{�k��S��_b�<��ש�^�ӵ�����uC�t�o�z�~�hM74յ;���>��v_�����`��|�\��c�e�i�c��@����6��չ���:����l��=�Y�����i���Q�P�s;<ݸ���;���J�� hPC��;}��E�;���i�N��G�����VC[���e��{��3p�%*i�ah����Y��|t�����zs����W���5X��<)-%�@-R��WD�`�Lh�lp{�I�8�z3���� ��� :�����6� �5H�`cX���!���C�E�{�b��w���ڪ�.l��Zwf�R-H:}?Z����a�Q�}�e��##�Z�yh���щ5Y3{j":S�`�0�;�p���P���H+I��{<Vea[Mҡm������==t+����[�M����B�mT5#�3�g!�����	��oP��L$�^�8��u�pT�t��KJ�}�t�ϝ�'����a��S�髟���?��h_59ÚX�0��QE��Q��Fs�YF�$8n�N|�����H����5��e�%�7����� DI&��Qp�C��$	�A�܊���S5�&�R�:w�I�[}��m�֨~�c���u�a�ϢR7�AQyV
+� ëKJd���N��e4���R�������[�^�꽱z|)�G��VEN�j�R�������?�b�o/N�Í�e�q�����E���A����'�,���DI�B���a���|�MƲl�&a�L��X��R�$ǲ�6��!&�&�:CB���!-�ܡ"E�*IbS�t����^m����z���!�E�=�����Cm	��s�9⮫��^lQ}����E�ɪM�u����na1깅�I�-��H}�
��s�\T}���"�-����ܰ�kT��z��܃���2��B���p�5�n�P�G��=�iQ���܁�>N
���?��c���PᗅLJ��V+f��$"4B��-��o��C�m���Fd�h*|��2�ш�ˌ�?�<�sJ��N�m4j;wX1X<�¿�����@h���7-�P������|�ô�戰���BBt��uˢW�5�^	�^��;	��C� �^I��&��yB��>J�y����K�F��VO͗�	�W@_��+�|}� ��s�]�b�R��@���xX�w�@����r�]*<4FMp��ȝd<7��[,�XXb�J�K\c�M�8]c�D,`�*v����$�1D!���Ӗ�5�����,��74�k=&f�����a	Bht��'e7�rT�j7#rT�j�"ᘻ��C�x/|�;��{���vI%�,�(�����W��0տ7�.�hs� 	�>�P�h�hw��	[~xX�.U9 �a�^�ӆ+��[���\8�H�9=啻c)����vw�7,��x0祍��`�����[����⿢1����bE|�_�-}�F��ÊY��������s��(g8�R�������~�,{"�z�HK
B���qh�ҏ��� 6Ե      j+      x������ � �      l+      x������ � �      p+   M   x�3�4�L�L����K�/�M,�+JM�/J�O�+)��+(��+�,� �
A`)�bM.#��Rs3s��\A4��=... ��&�      r+   5   x�3�4�46�,�LB����4.#�HЭ4'�˘ӈ��E�	L�(F��� �9�      n+   c   x�3�4�LM�,�/�T7T�2�4�L�HMΎO�M�̉��/�L��4�2�4�.a�i�]������̚��b��9��%�k,8M��a	��jF� i@�      )      x������ � �      �(   4   x�3�4�4IJ6I1OI3NMN25�44IIKN17IN3613N55�,����� 8
�      *   |  x����n�@���)x��%��%������j7�` k��]@*��.�of�'�I�TJ8�+�?��v=�XK�32_��F��'��+���7��o�1�-�Ӕ�I��.0�+��Z��J��f�oi���_(�]jڧV,=4�c���W ;UTI�G¢k靁�ݫa[�g��D$!z1X�c��.�l�jN�S��sm؎���àj9�����щ������<k� �6J)�u�4R��t;ÈKk!������]	��+A� � �>NZ��Tp�|:�����6��0r�gu����E���F!���P�ٻ��-��|/!�r�ZX	��=����xvN�݃Zp�uh�'��E'�>^v��I��̱c      
*      x������ � �      �(      x������ � �      )      x������ � �      �(      x������ � �      �(      x������ � �      �(      x������ � �      )      x������ � �      )      x������ � �      �(      x�3�4B�=... ��      �(      x������ � �      *)      x��}[s"���3�
b��̉���!����,.^�+NQ��]��bUA�x���n%UI���v4%e���T*uU-yO����a8��~���ɴ�_�&��q���F�*~�q�U��k%�ӯ�[P!�r�4_���.BH���Ke����\/=�V��`��Zǁ���~��xSy�����(-�����;l�5�l�?�2��qT���`[n��&���9�����8�V�U�O��/)5��Wr��K�����{�]�y�\z�EqkY+/Q\��js��×�1>_*������~�?s��@�)���7�gP9�.L�0�+���J2htl%�s
@t�������[��6��rǬ�j��2�����i�����8lõ��������ε�g�2��["F�zSx#o!�A�Z--��� ��?6l��K(Wkh��g�b�Q���P�:o�r��Vwñ7_͗����w{{�iP6����y1���b8��=	r}��u�W0�0^����d��M���0��(4��� ~�������:�Ȇ�UA+�\m�~C;��6���W��\Ť�yN1k��4,��]>N'��-��8Sz�gm�w�{ݼAE��Վ�_�nN��l�ڕ�t ��r�r���`���.�_�dC�+���� ��Z�Bx1��	�Nɑ/�g���bC��qt�C"��
�L���55���@oi�*��֪�ch��U���	��r�&{Ȋ'&c\����TՈ7��u��\��=��)Hל�gˮ����|P�g
c14���kM�dZ\�&kK�\k��ZQDk���֖Ͷ������������"�7��1��L��[L����i�H9�����7�/�*.\ے��Pp�o��t����9�����C�ʿ���>�<��(.�k%т���io>���n9��F.�^���L{��q�1�Q��d�	ҚUl�\o��ނ�x�$�<%>|�W0~�m���[��J�����q��y��l��7����w4��xl@�m����k�6��ٗ�bR9���w���w�r�+ksK�p�\���Ѹ���OƋ6��f8�u?�qR������?��o��e���������&���rlY�7��K���$)ca�}�����-����h���f�r�soۿވ��b��[�`Y�	�)�t5S2PG���\W�����_i_���ﰖ�AW���r���H��C!&����%���8�����g���.��S|����f'�N�b~�d�h�f��ո܂���2?A ��5`$�q]c�pދQ���ܼ�ﶷ�?l�`�a��ճ\���Ք�-f��
�j�[��r=���w	hN���ڇ����(~/7k�PD�	 vuG}V`�xs��0`��l+*�]�Z����Wɱ���:@q�Z�TD��.mG]�mTZ��}ױ��"����5�iJ��s)W0J�Һ)v[���J��}%��o��K�ETܽ٪;�%��E��;S���~R.�s�����\ғ���(�ZuvPv�T��d�1*Lߧ� q�}��)�b?f{!@�-��
i��藍V݇	v?�����"�\�Rn�h�m_�6aF2>���y��u�6Z3!��6t?7	����>�F7�7E77�ޢ�/�����2�F���/��Y�IBr�{�'�x@�D�
*\��TZ��J�V�:jN�3�ny��kH�-/�-eim�W��b�20�z�oBlbVM���0�}��z�y���ҳEmё;io��)�IH�_!;&G&�I^���r����D�Mf�ʶ{�b� Ŧޯ(���6��s��y��9d:����r<�h�m�m��
�'��I�&�*fJ�fS.w��|&:,F�W�4L����(�ѕb�6��[�9�ɧ��.�D�?)wڦ��#d��t$������M�|ͥl�-é��Ur���KTSS-�]l�k�U���=û��O�9���Q��B}�1�WWI��)jFY�{��n]W���bAg?Ύ�+�R�.w���4=���&=�!~�F��eK�U���ñ�m*T�&��a�3�����<��R��o^i�8�_��$�b��X�|��r5X�g[L�as����I��,���p�B�tZB��~�0�����$�����Rr@�+L�C2M�y3o����U�q�	r�e/ +w&�8x	�`�͉���r��y20Ðm2��B"�
�Z����uPFK�i���6O.����mi՛o�mo�����\�z)L�`r��dfd��v���<:�����}A��}��Em��X�I� �()ax9gI7qa#��"���M���A��o��EV��'��d_�S��R�Nl�"��)�U�����`R���D����;W�sßD��tnڢ,!���"�޲��r�D� �����{��H�y�O�)J۰�͎�ߢ`����F��[^Qq�YU�� ��ش�Y���h����~�Q�wQ,�"n�N��8���TK������+b��L�ݬ�]��5�|.o8c�m?��8hᲤ�٫�ZQA|�(�>PP�� �[g�+�0^�F])ԅ���\�0*���t�j�Y�E���zm����0� �Ǯ
N4%w���K�b��b� J��;�Dۥ��L(��]Ǐ�FX������*�Е�X�	����2�]@�ňQ��\c
�`k7%f�]��!¸&�6�WQ��Qe�A��dl�7�h�A��7샴��]J���^>H|N8)�z!�k��>X@_l���?�3��Ǐ"�VF����ׯ���߮����g�=�Lm]R(�ϕ9"�L�틊�W;)�{>�~��ȑ�b;g�����jZF�������se.�T9u�N�Ê��}�������R�L;�&��<1��z�Dgu+ȓ���NQ$*�LF��\b��0>�j�����b�����C]���v�_����dw�N��%a���=o0OT��r�^�C��m0	��cF����S�ͳ��R&ň��	�R��t[Y��a�<�����*������!��Kh��^c&���;|fL�¡n������e#�\*Lނ�FT(���b�{�G�ۑ�����XA�z����i�YP��5nJ���}����������
�t�Bt�ji�c⒏X^,�OL��#�]+�z3O@��P�M&y㾌̳����_{4q�!�eU���S����	t	�6`
��ֱ���_gޜn�����(U�9��~z�ç 1�%�ڀ>��~̄��o��`�,鿈��85�@��"54|~P�:��[�PDW��r�?c�|9�7L*aC� �PQ�y��8�?��m�9��0��Rkr�z?�o=0jz��[
�zھ�V������n��f���C%B&۸Ү�-�5Et���4�i�(h�5�;zˋ(�`���z�U����(��r�M�G�&�L�^�u5=���4�1.��#�~��`�j��.��l6��N�s��;qR_��Q������W*�+'�չ�[M�f��Ap�2�l��|�,�� #�I|�Mx�g�
��Y['v1	 *�����h(]�����mH��VW�ęIc�t��7��g���M��gBJE��M�����Ҷ���y��l�ހ�����{j�z��a����p�<��u�9����ߋ\�=�>�d _q�N��n�I��w�r՝!i�7��O{�D�(��%�Lmn�u{խ�iTr�o�p�AJpž�K.��OH�T��@���b�7X�|\Ĵ�e"�����ۑ���s��Lz'2]��y�\��Эvn4��}1a�&2U�_h}o��D]��=-��D�fs���	�5�k�f�Oic�R�S4��3U��	��m�D����VrXƐVAH��6�dw�a���rHe�{�v���O�����W�ɹ�p,�6s��wRV�}�7����d��� !�Q��{t�{#/ՠ^�a��xk�V���hV*�畱B���@w�+�C+ae	�?���`��9��NE� <��{؜m�`�f{���_@#���:�!B�7'f���쳛A�3 ��
�F;�����<�����    [��x�g�`��7��4�3�T�PWIمғt[�}�ة�gb��H3�@�(����׋n���YC2&�,�e`fQ1������M��b�X� �xU�W~�ۓ<����n�?�'J�v�\A;��QD��Jj�ag��6��M�F�y�hTYWQ��]E��~ӢvSM+���\NQ܎��Y{bL�~u	�ӝ��ʊ5��4 �h%��>����Prӝ	c��4���_> ��|
����[��9��L+�&s��oF�@)�����k��D@w���� ��n�cz9�$�k���4��jr���}F�9�S�	�m�M�I�@ՌD&�f ���7�_B��~�������M#��g �Fc4\U�߀Qc��-z4HwCo4�&Z��أ���>s����QcCPo0����O*�j7z��y�0U=���2߀�eӰX'L�u�'�����g~M�����2�����/�E��<ઑ�/gO�w��j��flHz�\��(}{q	YN#���Vj�0�:]�لr���Ԛ+Ֆ誑A+5������| ���e�:s���ҕ�M T�Hd�-� (e�S+5��v�F+U�@n�H`+5� (5j�f�˵�s����"�R��Qc���| �z��y�JM�突��L3��V�#8jL�J�~#O��u��W��X����I��,ך�t���	�R#c�e["�k�~��;�R W/I�}v�N�@���G�|��
a�#d �^�28�-�m#�8B�0�E-&�e ��]���'�k-%Lj=�K�#�_�9�S�`�_�	���l�d ��E��7`�i���-#�_�$ J���/�o��q0��-�j<r�ő^������%�Ȫ��w^�_ڹ�ˊw8ҁ���Y��C[���w�W������(I�a~B��~ �H5N)��& J���el����ٽ��C�����հ�'���1�<��� ��d4��k���)9��\<Lf��������]���A�����[zŹ�o�!x��q,���5��a�nےo�9�%œ.9��/�+��"̀��\B��5�g�JK���,c����GΏ����Zw�~+�~#��uQ&��ģ���5 �Բ�-ȏ|7�U��_�W2P:��@������������;s�������TkN`�o�����!��/���_�F�<(5-`Fr#_�I�>�������|6Pc�9��ZowGz�^W�8/�nj��Fn@�$@�,ɫ�b1ӹ�-��L>�<0M&��:�V�| ���vy�me���9s���^�]>	�KrZ��<�v3�z�9�z͐�<'N1�C�(�UW>����c���?q�o��8����� ��(9/�*t�x�	^��������Ҭ�(��D�OǷ���W�pD��吠�(�f&�����t�G���stگ��*�Q���r�x��v�u�`��U������/M+���b^3�2��59b��4�w�kE�W�ux�W4�?�Q�ם�Xk=fs�N��3���Qƙ��ph�l����͏7�G+;�sa;x��^۴X�����٭��5�����^����5]��ś3ĭР�^㬵���C��[�#�z�*FC�g�~�ұZG��\_��0Q����VcqA
��5ܟe����`�s�
��ص忉^�7ܫY̌�92܂q���u&f��P^����>_��U5��������0T_\V�	��k��ZK�G�:�E{�P��@9~� 뺖�(�9����H��8�7��)(��9S�k���;�O�Pi	y:��;��᷁�"�B�<�A�۝7�&2^�F�wO~LڵRء�~o�vS�(�����쮨t�g�?�3����p�D�풊h�z�7纒=P�*@���3�7?axV43����
Qo�����9ou����M�t`��]�k�p<��5\oS�д!/�x� ��n����i��/���L�M�utBi/���h��%Be��Min$mN�s�k,�/	�Q�e�_d�|����OaJC��P\�{�Į� `�{r-s�aa���e���w͚�׋�����{"ORs�ڸ�}��+Efe\��
	�Dn�3�#�y�X'_���6��J�_o���_a@��������%���X�nJ�ѻ���ֵ��sF�}���d[視i��Z7�J7�L;-�Z72Z�9Z�_��R53�&�|PQ9�x��\˴�-�~�Zv
���.�";Jnd{؊��\���t]�\L\~S�=
�@T[��(&k#��v�����lǸHd�F#��t��鈉�K~�ʀ�Cx8��_�}�m�ߦ���O�����Bt7>o|;7�ϑ���Mn7���䦹�Lf<2ҹ���a3O�]�=]nH��/.��K����Wx�j�A��~����Qow\�ɀ�7��Gt����
���?D7QX禰0�����[Zsۥ����7�� �s�fҩ�ik��tʢ�͒}Y/�<�
�F���h������E(K9��RvŪNg���b93h[|ٹ ��!e������X)�^�b�t��l�b��gpPV[��R\���v�2t�9�6��N�4�ϗ̭��u#=�V�J�$'RרPq��: ���l ��K��7�A���x�F��ۧG
�5�\�ʅ䠼��s����J��o�ԲiB*��ҜY��粭8��e0�g�
Nf��Qϝ<]��IG���f�T�go?h}����8:�,ԢwoIdGKV7ox����mQ�|ɷ�@ ��r�9�ˍ9gzsvQ�E�r�;x<4�$΃���5�ѭ�1�F������`{&���d����-|
M'�a��%	�r~�'�Ὄ�닋
�<�ʹ"N�'��7`�<�Mn1��Fjh)���@:፡����{��(�r0{�ii����=�5
�L`��0d�{� (9��#Qw0�(Ӆ�o�1�n����f�d`4T��d���/�7���{P��Lt+�!��X��L`�qWk�9
dZn�����A�0]���Ť���Vn��H���n���i���;4ֆؚ\9��ؗ�edkf��k0�!��|y;�φS.k�r�'G|��qo	�4���s@�"�ȕcΞ���i�Υ�����`ՙ��-3[R�w����2�@.��Ho"_�[���J TUK'4"Ь��azo#���N��JLS WOS���4�����f��7`��j(\��R ������hg�,7����d3+��>�4��-��h��3q�|�����f3�_�����\5~l���� �������Y��d��"g�_?��Q�E͓O�E�4�*���E�o�(�6�r)�S~|�9��(7�[�9bM���4�-е4C�#�D@׳�)��Um��R הa@��� W�u��& ��%fg�3x���7�Ϡ�m� KZ��ޏP3(�uڪ͠\
�һ��� V=�)f�5��]qc��>�i� ["�[�c�W��6�r)��H�^��/�֒خ�.B�Z�ʍ���.B	[� [5��� ����iS����
�E�.��x�����'rD`�Q�	l�mG�\��|pD��rE�lsv� )�$6!ЕQnȧ?r"�5�US�$����l\�	�	 ˼��� /+�.��>�� �P�/xNi��U˒���H�U�+0�����[�ϭ����%�������v�uD��MDa,*@̾�!�fY��yg��iU=ā1�ޮDUu#v3��JDQ��T���'�����?[Ⱥ�=�U9��1��8~WT�7ݭM\Q�B\e7���~�ET�Ow�E�JOY��=���lʏ���������L؎����Rن�����c@m��v��;S.���5Bw	"� �+
������MRX��v*C�̄�E�k���e��)�yC�����iy��L<����`R�7o���S���@Y�����"�P7ː��i��Tx,�k��Ro���gۡ��앦;|TB�VL��S�y��Hߕ
�ృův�T���U���p<_��*z�$R���TU%�d�؉Ӑ�?g�=h|=���|M��WA%����K���z���) 
  Ά��oM�"�p�!�-��uSm�e�� ���e�����
��������0��J#���+⹊ܳb��d���N����s�	�聯��{̐��;Z�B������p+�"��iV�X.��LF#��{O��<N-}Fq�����J=3&�n��p̽m��~4��$�9=K6^`Tc/�By1t��PI�5&�Op�$�1=��W���q3��������Yc�|RyH-��;B�a�C
�?#��Ь�Nr���d8�Ɩ���	�O��ූ�<�s��A���vz"b	�2�bq�(>���z-��&���M��7V�Ё�}�8�C�(N]e����SG�-�Y�UP���Տ�ǽ���zJ�P��>�'����7M����H׳ġ���c ��=�d%)M���9��lh�F1�ġ�8Mx��cՑ;w���7"��ٸ��p��G@{&oQV�<}�+	\�^�ZW0AO�$�ʬ��4g<�e2���s���QE�,>.�+/!1\��
����8�*, �W	:�Cq2��������p�Yc�R`�(�>�1�j�0/�ėcz��q��)O��1w���,�3J��X��a�]���_xw��H{�6a�Jܠ�����FхŐ;��
R
ǅ���,��=��/��i�y��ŀ�S�c�Pz1ᘒLR�k�|��珟�<�֧�i��7$P�E�<q��h����y0	~���ꁿ���9�Ui)&ʃ(fq��������eFp�7��H��`�t����ˈ5p�f�i�Ju��<S�k�}%�0����pX%�-ɺ��~�����g*i�~F�qB��Jm��1���j����%c��x�n��dU����zG�e�eͿ�����)�~���/����K�#�5x�&L�=�Y E�Ǩp�r�qc�s�ԏ2?���-������V�ɒ4m�
�Y
�	�7Ka�7Az�l��,�Y&���1����p�khx+��fU	Ǆ�)�*cƃ	ě�y��c��7� ��/ó��t%�O.���C��F��"o�����$�}#c^�zZ�_��^L2���!��ǂ���'6��▊�3K�WlsOUل���O6m������ޑ��/hXG>j��B���ɚ##�V�d��H+5��7�`�W�EF����Ԟ+�<�lef�v��R(�u3oTBco��D�-�.R]�{�M��y���5ɜF���5��MV/�V��'�?��'F��Y�)�);����E�w����=~]�m6W�~��H
{ą^���uS]������6]Hi@\�d0�1�Y/�Ͱ�gǼ&A�k�yX�vߞ���_��6`A���ݒ��p>��ڜ��1�eH�f��+oH�T��T�s|&�2���J�&���3ｑ���vT���$��fZڙ���Mo09��`aO
Q�պ)-&��H�k��֬x�K=1LU�H�TEW��u��R/FR��>߻ǟ��Cn�3��V؋�X�-�),;�λ1+�
���k�bfwA��q�H�A�!���]��R+�o ���{�^>ظ����AH�=����yg &d;"2m�q��?���݃��TI�NL��<�hC;M���6���l���L������G��뛙0���+Xh;}��I"}�%����v��vX��z��Y�U)x�(K����j���Л�&�l�A��7�M��8��2Afc19[��Y�@F�=ΒI��[�(��dd�d��Fѓr��(5@�i=G[��C�s�o^A[M���hEm�5	�)~!t(i %s����.^�"9x��}P�Nl��Td���f�����*_�4�+�o:�:�ΜۓV�j�����EtN�h瞲_�ƃ"ZNxES��Io+R��7+�����nIl	c���<��K��v���7�5�My�(��*mL�*�D��VJ�z�eB�,�xf�@a��b�?�0�`7�"^���<�r�kC\c=�G����h.	�����Ln��3C�j��⫡��{Js9�"μ-(m��SCh�D��o�|9�� ��&%��!���Z���#��@�6�|3M䪥�
9�`��k���	`��&�[F�҇-c�L�f����`+߾|��]���릞<�[�F�==v�o�~���Q�,M-:M�NG�u_Ju��7�0���)}O�K�U릫�e�IZ�B?�G�SP��0�i�E2���?$��=�1�z3���6��J_�j�ؽ`P1u���٦���P����iK]��=��7��I'�I�����H�s��Crw��Ɗ�
�d�I�&~��$}2�I�a��H;�g+��l�˹<{2zy[��"/�>���1{P�Ğ%�;R�����M��)��V��Nĳ6� L?
Ȗ+�Ū���UV�;E�ՅOJ���P�N���n�]Cňܭ�e��A#"
c�����n�|Z��<������j�$�K��s�pC�]"=��� )^��_�g��q�U��Q�X�p&X��G��"S�#�������1���[��d&��dWQ�J���A��me~�'I���\���K��k������w��r���F]������\.�?�,��      �(      x����v�J�&���1��u�)���Ku:�d�N+�/jK>�k:{a�H�� (��V������y��߾ (Q�\���\�iD���c�w<��xZ�6ѴL�(�u�VQ�N��*-gi����kWο���r���$��.��Y���:��:+�j�*ꧾH��vv���MR~Q��lFŵ�����X��^��w��L���**��08�i�x�䝛Ⱦ��N�C}�XוZ�$��y�)&���b)�j/E�t���;;�2���EmͲ����,�iU���r0�V��|M�r-�$�e�I�O׋Hs�% ��AU��zA~ jQL���L�?m�z����E��l�'�I���i-�eV�'����5�pg�4O���������/�u��^�Y�֙<G�C�1]����z�i�y�q1�����rRbh�T�"�h��R�Ǆ�UZN�}<O�.�i�Vu��E/�����6����==Mƃ,��9!��Ş�^�e�s���K,���d˴��h�k����ہ�z��&q9-�4Z��,�<8���2.7N_8}�i�|ٷK��4^,r�hZn��wN^����`k�u}1.V�4��eZ����ӣcw��ӚhF�q���n�tZ�I�h@��pk���ʪ�V�N�<�#4+����Կqo�ƽ\�r�0�Z�E�����qnW5�Ϋ�|�{�����n�{nC����|ƤN�g�wi���ח��d6¾_DyQg��P^�
��{y����#n�y&d�]�(����(?�p�Ɇ��*�^�W��=A�'ل�H��� �� ���Q��L��|��k����B1\� �I�s����N� �[@�B���8���eB��N���0Z2L��aoS�~\�6����Qp��+�I/r=�4��v�?��4]5����D�zp�*�����7.�Jm�	<"e��چ�g|��U~�D��L��v�z��䭠gFS�x��ۭ�/^�<�	N��=u�����i�M�я��u������|{l�g>�9�`f���7�r�x��$yd�����*a�s�I;M��5>?J��DbO�-�dPyQ.�E?X��ˀ�o�U�X/��-�r? �����
�`���#ZPlھW�uYҥ�	��S�%�s��;����e_�|�O/�r��`K,
B0��Cy����w>q˱[J���ǟ[�ǟ�l|�O�iVH
���n{� �.b�-Ƴ"�ǳx�-6��fDV`��B�&N�`�ϔ���R�I؂a�z;���_�5(X�)]��;W̸�Vq��gB��X.�
�#�A�=��Ai6��T��;$���U-@�K��ʢ�㤞^ �y�L��5�~����TG%�C�&]\�5Q�Sf3b�FU�[z#��A�;#=��Mx۾n;�_�����mr��I���߁�BޤX$�oZ�_���]ү~.�]$��eA܂0�YB܏�<��V��5���	vȓ'�3�O����<]$�܇�q��}}W}�3�Ƹ:��
�����Z�.��PHhws�`	�� ~��5�"�a~<��o�M!6�����Β��=>���}so^��;m����jN��&�b����Bq�$���u�V��f WR��	K�<�����A��Ѻ.��d�6ʭu�ZL$�5�n�z����Z &��.2�]1mQ�j�D ��༘�)ac&��:}K�#II�r񌰤��*K���݊PZ�����-��iA�ߊ���3��?���e�yT4Z�d�I�LXƎ�L����etAT��^�}�c�hqq�U�}�&L�J���Ik������zAM֋ ��]R@lp,u��櫮6��>d za!$
d�p��	�1eQ,/���G�����?
6�=��e#��kbh7D8yK.�˴#��,3U�e�N����Z/��e��LM*����œZ����xg
�PUQtE*~0����!qu%�-G��E:��ŧ��\X�"��^�t�1��+��jF�i8Xu�.T�Ж]y5�����������X��x�~f�Q߻�E�n��$^�s:w�!ϗ�/9�tpJ�Ug�[Z�LH#�9�C͛0��ԡ<wx.���9>j����&�)V_�0J4%e	�N:L���\�C�+�-���~Ud'D�Nt��:��jW�H��7E��ܽ��Yh�`�4hx�wD��%wU1D�\��FNH^0E�d>IF�fM��X�f��-�1@�D%,~��H
4I�	���"�æ��6�o��ȉ�#�����s��[�C�~�Y�q�|@����K�WB�#���Y���B�⎁��i�'�Єn���'e���@]��ƽU���fd�
"eLU
�����U<Y��e��j/V^E��""�>[FyzE��.SD0�a���Yup�FtQ#w�k�aMl�;j%7�Ek��&�;1�Vr@�x�j��t�8�6�A$�o'�eJH�CÇB��_Ȃ�� �/�$�۶>e����t(�֌���DT��D����[�:@VRHUF�J�5�Z�2/��uxK���C� ��� m�:��N.�B�Z���@��$�ii�l�vj�7�f`f����SGOy��bL��������X�J���S�(��(Z��it0���^���N4&9N�g������`�KemT��dG��/���E
"G�@� ��>��,s�t�W`5z�^�g�BR_f�jo�B�NdY�����F&��б�:m*�Zai�x�r>$�E�CWg]֙6�@U�'U��>�����ɺ���:W�TL�h�+l�q�F�).l��\�%�bP\�z��,x,�[������D��Q</��L?�i��x7z��?��;Mˬ ���Z��P��CXn�^�
|.]�݋��y����/3��6L�b0�\�K��bL�S��`�X�
�9]��5�g�:t3��ƺu�0ׄ��Z�u�N�b���d�1w�"���t�ȡ����M[��3�`�w(Q<�O!���"*��`tLDjZ�I\�X2!yhI�G�x&��S�J�`Ѓ�1�[5�onƤ�W�2�ɾ-.m�C�xVx����D�v8o vLh�^�/�&�P�
�t�e���_�7'��|
f�����v�]�M'4����G�Z`5�s�~�7�{��Y=8����c��=��W��X*� ���:�H��S�%虀��tW5Z�UA��4>&���!�W��&�~�rT��>�:�%ԅ�w��`S*1��$��I�hg���G =y"���̔�����Eqgx�|2q�xΧ��Y�+ھ� /wEs�:Pz�S�5��"�G���tb$[C�2�0f-�{Z��P��M�%z��~��K�F�ee����h��+��"y~D�Gj/��%������	�GY�(�C�q�uILCD]�	p��S��w���͞�q�� F�sC���0H5&^�DMDu,,Rb8�D��HX������I����@�I�� "Wh+W�i��qK�0%�UMKld����/w��j<I��&tF��H6FT�y�{�/�T��T�g�� L��pS�p�!m��l��d�M�M��\��#��K�&H{�лVM�:mo��&&UfM��չ�'�R�ٍqz ��',�:}(?.�?��J�6���~Ϡ^e��>!�T�[��IMޒ���9p��)�߫ބ=j��w����=�u�Ҫ9��8�lOh���O��k�`_���ф�s�`���]=�T��G�֢P���g�x���<R;�.;4�P���x��%����(-�d��7w�K��)���؄��:	�Q���NY��=��c��'{AOzu5�Yo� ��d�#Fi.uS*����z�,�lZ��}o�o��I4]���CAS�v�� �E�ω��-�ܦ��6T��m�yߋ.���ip$�E��1�Td�I�v9��Nb�:1@���N4%u
<`{��b5��32�+���x =�0F��iF�V�2��tV+9Qړ�S_��N���E\��R\�o]�I�ttD�ss;A&f����[|M��V�C����&�X(��fF;��7s�KLE�-̪77�f"���D\��3ٲ�'Tx��s�CSQ�#b�F��%ZŪ�M6�Ș�rHN6�9�    +p'�EN(x�m�a~یc(b[)��UƜ�0-�2���a�.����\�vQL�#��QL�;�O�����{��.P����}���\��y,������4@7a����úЉˇ� kGg�Z1�.�����[�/H�˭���LU�U'qw��mzA2 ̦��GR,��E�1�3�1kN�uS�:cƞS��C�a�ņ����x }>�?��/���&A�a��?�����qL�*��b3l<���j6�����w|2$A��8��1`HoB�����q^��l˂Z�=�H��|���[���~�'�7W����:]z�$vx�����|]>��}��)�5���"��S���Bt�ʃ߳��MB�]�i_���6Zd��3է�\���e�zl�G4�4T]2�Z�s$g08��fʉF+��z�z[�P��2[E$ޜѿ<9��wF\��"����L#�*e5�-r�T��
agkF�E��������a�J˴�G��z0y��u���}�x��YW��1?���|O���Nx�"͊���tt����I �bQ�#��eU�N��Ë�\�F���Y LBP���/xؿ���k�Ib��v^T[����)���.��}o*[O��
��\T'bmF�A��,�3�x�>b^�����(���g��{���r��+��.�S��0×���L1C%k�I�Q�9�m���=��BDDx��vX��~� o�C؋��ڇD� ��Q k&ٌ=�k!#�kl_G��~���	�����o���;N:�~t��jt�`�"�����Z�t�9N��=m�p���� ��e�%qP͂Xh�e�D����C68�b����Z���y�e��X�߉;�Np�d�i��z�x������i��s��`�_�v�3��\d��{��y�-5�=,x�"����e}-.� M�8S���i���v|`�O�a�/z#�<�̧�!�G�����3Q p:���Ћ-v�*d�ŌnQK����H\�7ed*�^7�"tj$�����Acf4�W8l��);������.����b/����1s!�H�A��{(�ۍ�LK5�h<ktH朗;�j���	 �||����΁�6�e�8=�k��Ψ;��!�XC(E�{��2M@5�𷣁0�bRљH���>���Gͽ��J���c��b:���fSx����(�Xy�}��E�s�ң��Y�u��؀W"¶n*B�?�ɒ$�������mT����Yd�ܳO�ٌ�#R�e��hrZ�Ջ�D�&fQ�g��27s���6]�c��C=����{V��b�8,�Jy����͆>�h��a_?�ğ\�ĩ�Th+�r�����?<wP�}�j[�БW��*a׆/_�I����Y�8wD-�~~n�q�#W����l��_�X��㕈e�P���vt[|�ύ@}��;��0(z@��{�@o�.,D������T����#�7I23�i" ���l��0
�吝I$]�Ad�D�.���]��J��W��n�aU;�g���cnpY�d�H�7rE��%�����t����"���P�@���5= ��f��뭑�@������V��sҴ�\Y7�`pC����'�Y:�d�G�lUԂش��ɟ�2p3�����zcJ��w�l&~!�w7c;a2k	r�M/Y1/��E6��,�m�྘���E]2I+cx+�v���<%�;&n�и�I�+Y�Uu�����3딒Dċ��"�%��E<�#5!PF�L��Z���Ĳ�kb��Q"!
���}�`�ݜ��?�w+����Zx,�*��93�R�����+|��a2��'.�%Q���,
XU>��&8XRA+��q���������{��닲��E��;�7�i��-���-���.Ө.�]��~t|���b��1ٷmH���٭��$��y��)]��)�ԩ�e�z%L�$j�f�9ɕ�(�nYo�G�M����Q��%��ܡ.�9'` ���5@�8u���*T�.���E�P�s$�M$�W�ņ(݀����8!��P��u#"V�����T�}`5��!'�����I�e;#�L�4�D�cQ%��GSS)@_���S��`rx+Z�[�� &�Sǯ�Qc*��P� �����%'堟e����Ɨ�iA�ކ��G��5�t��j<U"Q�����Z�E�Y�4m-0�;f�9��p!����n:h�<�N���z;h|�`-T�;�I~wU��_Y�&Z��C�dG-�������=ZTm޳wp�Y����X�W��b5Z�Բ�u�S������Y�`R�c�2��FR��H����,O�E*d��u�"
�
���f����:�
�|Pؠ���)��D��=�- Z�TU�4������6K�sP�o5��6~L���`M\�����w�9SZ�4��l[萊��l�<�k�l�,��~���4qk��5&���|�l9'/����҃}�ُ2u|�LB����F�?�GG?��=z�����O�O2�-�Pb-��,�^��kG�/��{��s��5Y�g�&̇F�kث��5ݡ��;��E9��*�©6��!ˌ�Sl�)��P/�� �e��:PQ�a�/�C��24G�I(���̩���/��)���"��+f�oW(d����
8%)����;�p�^7�s8Z`lf�|�ދ�5�(dr��9P����e&��B��G��s�Y��J�YsOw�$@dt�l��m��`�f���+g>� Z�7��A|w�3��&{�#|*���,�~�kF�|q�ǭ�8ϩqĐ̟�zR|6qyń�3��	�O1�n������#n���ViI;�۾��'�r�{t�j�b@�ׄ$�b�L�n��4�B�S���6��I
��̬�jLӸJ����L��<��\�+�a�M�<D���,������N6�����{�>�,��Ѹ�2�Bw��&������k5�6O-pk�DXL���Vܿ��9�ι��sx����7��
F��_���^����y�� nƸ�����q��ہr'�/���9x��`����9M�`;��Av�������e]OM�!��qҶ��#k �Ps���c���=�?�e, ���Wp��쒏z�e�5�L�������5�*I��Nd��m��ʀ���j}��-��'�y`�u���.���Puk��Fڡ?ٚ5M�3��4�/�����`��2-�HJ��7���1�*��o�K��#����	7��;�X�P�'�g����qd��p�)��+����Ti^�Ԇ�H:�@M��dj��az����;/�������9�lU�j�8�HD�f�i9�0{��qX�,�j�5~'#�N�I_c���H:�鳭�'=�y�$��ܠ��U�����xǲJP�e���� ����-͔�FX��hݍ�O��:M���\�L���>�@'��1ǃ�+�K�׮}b���2�d}7�q�i�j��F�ލ������'O����0z���w��9�Z���U��4thw�h��(�l�W0�.��mZ�^<_>��gggt�~3h�?���Ϟ���'w�ν�+��e�ᜡ�/�\o�/�������b/|��f���O}����mw�����k��ILBPh��G}�1���14��5O�`|��qz+q�CƉ,�O;���\8p��A�x�Ӷ��M���iIԨ.����׋=�d�r�׽����� 1'}�^��*�(�Wq�V9��Q�,������sX���3�9&>���9&��������M�C��	�b�Q����eYgc~e�����H��*�0ϳ&z���(�Ɇ��˔���ថT{�+�p��,��f11˳՚�����Ğ/�0��bi9 ���ڡ�.�<Pwt��l��SY��N�(�[�~ڬl�ϐ�.����p���9ł^�����˻��o�
�~p|��Á�3!aZۋۓ+a)p�
|�(� R�Ym��<��*-�0�Kha3{V���Y�����7�N����o�a�Ƒ���������z�	����V�rAt��m�Rx��0t�#    R�P�5���Ye�UZ�3��b�����v��r0�N���>��5$wt�|4eNG��~U� ��{у���+�c���*�;r#KݸnZg��5�$����Ck-�\8cX5�ʀ_"0�4c_���X�?���Pu�~�����~E�z�N�̉�:��]]�f�1��"�����swTN����+��l!��>(���F��Y/��?�N��g�(��游U�W�l�y�7���@�>�� ɴZk�^.Y�pȁ����>�G�ϳ��=��(`k7�N����:�^.\���iD|�˿!|P��$q�2O4���[�h�y���J��M}�~�[�W�c)ąNwV�g�\Qq���h��$E��~S�A��3�mO,,����5�	����`4����XSb-�7
Zq�6D�0��ީYM c4Z����}��n�l��-bsT�o+��D�����F�7b�����g:�S��c����c�z,�����͊�Er�V@�)�
2~Y��т���W�J+��4x@�w�a2t���&��?%�O%�>�Y��4-�XK2k��$ua@�ryz����<�g-����`�o��<�t�9���R��R�5�����	�<I�޷�ɫ\�T	n��
�/ ?o�1��x�	<7����p�޻:b;���سi:��9A��}?��G]����be�����8����N4��KdI���_,S�Oy7J��g�z����3dy����o�̷m�>_:v�1Z��� Ǆ�t�^���o-.r��я^�yt����d�Qv�r���TaÖЮ�&�.'iGl�d۱��w�ݶy����,ґe?q�TEm~�����#�Q7�x�1%��V"0\B\6C�xS�d���%��@w�3p���sI<o�|Ym��C~�>me�	U��U$�M.9���H<F�@��!Y&�nEqI{���{��8����ߦ��R=c����wU�	�����L�@ߺ�|?_p�u�JYq�e ��ߊ� ����� ߺ��y�t'��)�s�y��>偅U��\{��Y}6�x�*�>�V�^�c�`�KԾ��^1"��������>3��`��0���-���$��%����x{*v�WY��#H*䍆�q����	�,��˅��eϮ�	�8��Y�~�Mo�-AbHu
�}8}~��O��F;��8�t�V���pHj���5i����7n#ŏ�'�{�{)�H5�ۇC�	{:i�e1���N�C�O?k��LX芼�h44�}���?���ѯ��'��T= ��c��G�JEY���jCx�8f��+N[;S��n?8��2犱;�;!�qб������,_~xר����q��V]Muy�B�k�)1������OJށ��C-l0���(����OەdO-B�D�K�"��҅'(_m}Iԫ�ZR�Cf2��O�?�G���,��\�I�c������Y�v��ㄨP�-�1��Ύ}��-����g��-{��f�^Y<�N����#�' ��oI�|<t9O�q���=Ġ
{�{$J������~��p6%�d���(����.o��Dv6V�D�C<��t,��R�h�5�ƃ&���{�U���1Y�]�Wl�z��3�]�>���a(�?�	A�5Ԗ�����H����'�����b�[�(Vr_5��*��� �s݅���%[>�q�f������I`�&\=�>&�oV��s�������4B��v�����ҿ�c�������&))ݻ�K���hE�����B� \{��1�h��c��	����>!u������83�����⏛M�4���S��8XD\\`p%�K�o�5n�W��Q��FIrY�"P��hῘ�O�d�i�4��p^���!�$���ߌ.��̺��i�˜�tB��0��,�P��7���nܿ�Xe��8��	�ټ�Eed��hq5���Xpq�v �n�p�l!��r�~-5��E���*s���P����d �$`�I�}4y<Zm��g��.L�ߍ9Lq@D�x����Rj6A���%�m����c�(A>x!��gb8�8�Պn1�"ƶ ������S���.�L��k}2 .��2���V�7�	��O%]+kP�~����[ci��3��֑}�,��{��7��%�����$`���B��F�j'}Q,�6��4{���4�MbB͸��A�f����k/7��ƗЀ;���3� #R(.	i�d�c,�h�r�ԁ�߼6�������(�h��]p������n�&;��kM�dGSGK��M��Zm����OK� 1F,�p�X;�F�jRԋ.�g��ڧA��2�E�h����tL�j��9�;0�&ε�������(M�4�Mo�;U<�.���F�.Py8b7n�7Q�|O\�|��T]ݝu�H{P�,���������i����ek}rо!6획#�CN��C�:�����z�<�ݣ��
v
g쪛�ͽ�xh��6wv�?��n67�]����N8���n�.�w�7C�ٗޓk,6�ư�#�o��Y�_5�p|�΂ޅ5C��lI����r3��_��=��mHY��tv@w�{G����`W��s�T�cZo���7�wW`ӫ��l�-$��n����xU�����6����ӟ�{�����/�C���_�����?���U��������-v�ޟ�Lu3����wD}������i��T����	̇B�u��}!��uBV1�"���^����+�"��0+x)���h5��*���"8QD�I�,�7�V�V^[�!{�����7�+Z@Q��CE��.��
�< ����̕���;�r�!�v�; �73u��)���~*! 6t�+A{(�B�ҡ_���D1���;ŲV�{� =~��lM`�����)�7�G���}}�|��<�@��Hmtu)�=#�Q*	�<=v<�_��i�|�����{����:G�>��0�ó������z��׳���=`��0�Ʀ�]�h?<uZ?�]�৳��Kh'-9T��G���~��z�yh{������=����oh���!�nw��B`zW��3�{��nm!��3���[p�!�i�G`
Qj!�C��]�!�V�y�$����j�-����l����lx�Lg��~? �31���&�z��v}���:��[!�Q�j=kS.y�'�¶n{)f�{���pvO<fAh�u9�����j�.�x̩�`<ㄆ{�6��6��+a{ G��s�;� ����=���t��>��ng_,�PwE�;B���~O�[T�_nW]�Qj6B�+o�@� 	���������l�~��������@����}�&i�������V���&�����'̸e]��=w��^;��н�p��;K�nJ���[��e�UQ�q�J~�8�vۏ]��n@ckJ�|�a�3��-R���0Aީ �c�� ��F�8�>A�3P�]]��&�}Nwl��J�Kt,��9�q�rZ�<Hqp��|�
s�����XJ�LRGH����E�^�.ޑ���9p*3.W���4������H����h��1�=R�Hã)�8}e���)˳��=
4���Fl�'I$��L�sVh2n|J�@R�&V��,�.O�٢өO2͵8�Ӿ�n-�����ā�՝'�_}�4��9�����9����l�_���@�9�	'�vr��'ye9Ȥ`t+���#=RGO�\�|��-c۹�4���-�R�9ɶwA	��eQ[5�HP���k������[-�La
2��k��(��g���L�
������-8��:o�5���2��|Be)baCm��B��	ӹ#�CG�&�ȷ�DHS��ՑV�c�n�&��Z����м&��*�D4n��<4�Ma�w�$}��x(�M����R�>wAm�0�7WB+#Z�`�*�C�|f�s�I/�{��QMB�u�UG 9g�=䌹̲_�`�������#�,�*�(�-��Q�D����l�8[�
�n�Y2U��xZ�y��"���i��4�M�!f��}����5�--�U��y�*��<γ�x    ��V�b�\1��
IԪ��7����k�%�s�x�+ekr�5+���]��ϴ,`�K��Ub�����`a���cnʵ�+YPT ����mؤ�,�;KM��@w�n�ה�w�<��ȏ�]$�������.�E�,��h�M/׫�+#}16��k	�	�Z�/$�1���/݇�o��cbU|��w �7��⿮���."=�H���p�4�����-�(=�t�:z�CJ�H(�O�<��$:�O�.�S���4�v�PtYI�&��UC����P��٪�ӕR��EzWQ�:�G�'�@���ݱ�B2H0L�[��Je���(��I��In�Y�����(E���)��u��D�G���4FJ���w�$�^l�fZP��]d��'(�����ZVc	H&���!�=�)�+�.�ٻ3�%<���k�� X�q�fD�l��Y�g�$�4�r�;Լ=��d�5�1QY�'��*=ԋ�ZY�(Z�Ub�kV���4,'m�O��&߷PY��I)�*[#T�\�������� ��D�=]����g����y��/1{>g���Q����[<e��1�ㄡ�P+���Gc��B\��W�D�\΅��a���-�f�7X0�)�g�([T�k?蠥�@�s����۠;+I�mJ9e#Vz�%5ݜq��B!(Y~J�:C*�}��K�P��L��֡6,/팃���;/h�{
�]�LQ�����C&��T��X�8�����	��M9��Qpr�WTT�T�փ��=�������w����о_���i]=P_�+)��}q�D����.D���'ܕ|\����O��JǸ*ʈZYO�5�������}&�_�/���4I�t߄4�>��Ң$(E��W}����^���:�:� S8	m����u����V��)I��HXSġ�/qA�vM�	&�b(uHV���?��t�%kN#N*c���H"��3�*��^�6<*33�iW�/y�W���s��|M�M�(&?���R�Km캒�&5�/M�"���R�
c˷�����>9����y�V�!H�/�A�"�2P ���Ϊ]��XK��8KD�~-ź�B���?��"��[�ߍM��Ĭ>w�e�}rpSYo�bMj<f� 3F�xv��n-�R}S+-p��ǳTd]|6����g�R�Rn�`�b�^�,��TP�X������J7�"��O��`������P�J���m�^_���=ą���c�"�֖f�A�r��1}r�M�:��y���ܦ���p��˦}����Oo��*���T�%��n*d�mAE�v6p����Q���HC"<�.w�V�ցSC�ӌ�L��e���쐂�yS�Ia�6��^�^cE䰐T�4����(h#ǡ���$�ǇnX��=�O�C�]���w�3W"��|�����q�����:��&Lo!ؾ�㽍�B|b�n��#����(R�)/n�6H���P�`�n_v_zH�X���Z�k�WB�l��{7F���f�����������!�����-�u�ٽ����Kq�-'#���¡UL�J2V@��K�W�UM�/�/)�"z���Vh�B�i�;VD�v��x�wWp��'�
���Ԉ��/@SY�όE��Pg����˴�U�lu�upT+���_��K�h㐹U�J�̈p �X��e�V�K�J��|m�|�E�q�*��Ͽ�j�GU=�鸆S"��f��IL�Z]D�UT�����݇O�h��`$
�(\ﻡ�xR��K��<�|:d.��k��!�xL���'j��6x�eP�\�����çG]��:D�}ZUE9��
�q�<���ث���޽��UK���ml���������-��q��A�'y�C��id����������o ��cIY�vg�L��h>��L�Uy������Z�]H�%�^aWw�-�$mă�㾹7oo]Iϛ��d�ci�|+D
�s}3� �1�t�ś�x�͈,�mH��$<�Y�Җ�p'H+��twt���~��/�?�74)R�J�ƙ ��4��a�E�||p;��d+0��˴�ҡv'/��Zk�n�%C�F$t���� �U\�9m�z�Q [ ^����8��9-�YT� !��<����������n�����9�=p�%H��.q�ԩ��L��A�	�<��.��K:������*[����͊v�XvK���5����v)z�>>�j;����}�� _���~�G��~���R���=W���h}4�}7���<�0�ck�l=��S��2
-ݵ�ݷ��ZO.���>������X���v$�(UJo�` y�3F�b���@K O+�|� ��ٙWͳ��'�^��?={"|&�_�02�Ӗ+�1?�,�:�=�j�C���t;�!b�z��m^+�-�I���s��VY�DA�-օZ���E��q������p�izI�J}X�x�ev�"�u��$�f�y�ˌ�;�UĮk�}UZ�kˮ[���L�dyK�Q��ۻe;��3{�EgOHN",�	y��FO�g����҄��n�Y�r4�4�kY����^�|��^�Ѧ>����^�D�{d��i���B&,&��#rC#��6&��I�W�	��"8�I,tA�U��:�X�]Hi94�Y��[[� �A\��	�?~���qD�gVps��"V�V�P�TZx�NQE��x(��^��tY�C۞9&nA.��׌�9f�xc8Mv�[��d��@2�z�4�� 0תa�0�V�vqa��v�zh��b�x "�4�-°XV�f]pnpr�� Y��4�0�:s�⑘/Z���z�����`��ůG�)�Y��R��:w���^*"*�F�h����ڼ�C�8��6�'��2��~�G\*[�؞����_��U2�#����L�q��dy�l�6����Z�!NL�����Rp�#f�pz����l*�@=' t>��x��14�cV�DeA��֎n�hItl38���T�*4���*-�V�`��ց?$�W�5G�|e��&1����Cj;���y�����a�W Nel���uq�p��M�F��t��$��`XpoS�[n��u`^6�+Hx��G����m�|k�;ܯ6[�������ot�A�\>�P65�
���S�9�agQ�
ԟDM�K5[��;�yO�S�^�U@'jY�|�L�~ŗ�ۦ��V�g֥f|��&�0�������ʑ�{$KV�뜵�t̀����\*kDs�W�C5���l+V#�U5ی���d&�H���R��qV{�5�e��G���-]�eQ׼��)�Y��*=pi��ᨎ&��W1|"�9���J�^g� �4��z�t������<�����?܈��9n�FUmO���1�
U��;����7�	{fg�P�rK���*S�a��y��x�՗LX����Ht����G��θ,t�����\��%�w#'
�a�v�:����e�����J�0
�B��晵f5�:�4{��_�₃?K�\�E8ny����,���� @]�$���)��R�S�ʘB��IZ�5z
LC->�/��k�A��=}���r�Bt�_�%z(Z�O�B"�����W��"
��v�#�	D6�����r���:�gdU�c�#�������xE7hiÛXsj��=������H�Q��{�Ƶ�B�� qd�i�D��y#-��.�h��<w@����r�64W��
�	�BixA�AoTN���#�Z���>�Kg�{�&6 Y�+<��@(m&87rۥ��! oA�dm? U��f�I���g�xO��o %8XVဢn�,��*-�Gn�:!YΗ���q3���vh�t<M���\�:�'9�'�2�j ���F�f�{8�?2�g0Z���?�7��'O9N�P����M�-�|�Wq������n������i�����ψUU�HE
�@z�X�_�׾��\$��|ϚQ��g����'a�M��C���䢐��� �y����X��/��г�;x���G���]!�Q���x#�G}���Z���f�;�fh�~�*Q�飮4�Yxq��e�B    w�G}�^����%�����e+�ϲ
���ې��c��	���z��
����߾�ݏO�̼���3�����xx���s��y/�훨�@�����#ɓ�3����������#�L���l.=S��s�'�Nk)����y���\�k"��=��B|��%���h;�Z��,I��H�Wq��X���b�ށJV>Im�cq���[��B(
X��om�ၱq^ ��	����4PzO�HYz��@�Y+jm�^S+��٫�G,,z<���Z+ G�,
��������P�A؃0F�rS�!��<�)ɰe:����
��i=?j"�#�k!��Sфؠhp(�f8��$j��Q�����|{t����C�Ss;g�f�]����{�bwlm4E���N_�l!Uh i?#*b�� �*ۏZ�Y����@�?!��7��x��G���_?���y�w5O���w����˾�� �YW� }��68���nó�5:�p�8EǶ��⚎8l�����L�G'���roq��ܿ����-�1��	ͩ�����D�X�׭:��8'��0�¸�B�����mSI��(�E�%J<��C�35?]ў��O�}�o80A��؅z�k���&�����F�G���'�Z�F��al\�6f���'�N������*�lR|����u�]M�j hX�0(؍�}f�dt]k�������1&�y+!;��~�Zg��~�������^�^�;R�6�F�:Y��F;���wh;�Yr>H��?�+��4OaH�B�iV5��l	�[�$����\���L���\������H��k��[Y���a���7iC�;�a�I=�Lu�����{��߉�Y��V��Z��!-t��y!�!�'�W�u�A���V�m����f�h�CK� FT�Z�B�4Z	{�� J ����=���[ �N�!q��K�á�A�"I�����O��|���M*x1�J��熜f�����s!uB��ap��v��0��c����2�W��ћ(f1��n�]i�Nx�nR�ڀ�z�MSU P"u�Ӄ�l�	idH,L�.	�=��u�jBP"�(d��s~ ���#����)��,�8H$)N��P3�N8G{�?�%��-�9N|:d��B��}��|�*Y.�˴�'EOC�Q��u����ڧ���sO�?q��*��=�w�Nۯl}�a�4z�S��N��V��[�S���,�e�.�lY�&�6t�/���k��V�P����hЀ�Rb},O}��9�
Ės�R	�A�踕%B���Q��n�rh����aU ;4	���:3�*�U.{~p#,-Uˍ@�8j�?l�|����@���T_��j�}@�+J����^�R�H�D���C����Ԙz9�4ui���f+�@�;���3�d�g@����K-g�}[�[�\x$�=�W)��+��Ͽ7s��;$&J'�-N��o#O�dӎ+F�8�cL�e�S�Gd��Y��7��/q�6m%ؽcf�ĉ�"��i�*��XGYc���с-7�������U���F/n�-��I�]Sg�(�=�h|�%[�6.l���a]ǃ�h(
��$�Β�-�!U.+i˭�nW캴�ԉ�w�ax%&E��
~�cw����;�b�?����Y��V�%
��-|��v&��߶�w���i��#���t/Ғo��5�1=A(q��OWh����+�쾡���S�˾_��kB�cb3�9�[0���l�a���m���-^���ҽ��0�qʔ�4���N>��z�.$�ؘ�	�m��z�>�Ar�'6!��DITM~5N��C",��[jNK�%�N)C��<���y�.�o�������{�.�Rl�!��l�v�=��w�W!�L��`�k�����A�gƚzw�Кj��ٮ%��� �v���٪� ԧ?�>�_�r��]�0 ��/�r����[fhˇ���[7�V�Xk�ct9�.�Ol�Sb�=!�h����DK�r�i��>
�$:���-��[������
�~~ۋv�_6��1@�|~o˟����?N�[���������~�v�̮Q�j~i������oׅ�GE���b�����Ms�4���/�|���������{��ڷ���lx8�Z�[����?���|�w����|��dc�{&z�o1��2�,ړ�B����fA��b�̛��@��XU�Ss+i�o�Yy�Vy�����j��S����_��^`|�P�"�eT�߽�CS�/�{�_�.�FB+5b�o��V�Z=2/�N�o)Ñ59s�
	wc�[g�sC�4o�;�Y�{{�MR���w��(^ec��$|A-6ůMr�.�T�/�y�NO���OO���=�)���;ԙJ�r]����� ����S��?�������Hs:�"�/�tX$)&����h9�f��6�3������@�%���w��e0��;�Ǘ�x�ު���&��jW�lR���CD/��^p�!k���<k��<�o,/��C�;��K!�Z/��������Ө..�< ���s~�ڈ���
%���N�|f��akVk�'؆��^ ��A���;��Ҧ�ˏ��>N8I�Ĥ��s��踮�v{Alyh�*A��N����a`/vC����,��m4?�xP���ha�_:�� �<�%�^&�<��Ÿ!Oyz���(u��Lp;��+5����d�ԁ��8��N|r��H1/,
�p��; �:n�X��C׷���n�} =S"�Ycx�U�E�������}kbį��&�P9��;��F�ލ��'t����'�'?����Ȼw�\2th��V�{��С��#�hU3�D�1{��ya�FK\KN�@�=�C�����)C��EV�=u���y��u0��H�[��YI�"w�|���W+:��d=��={���?{2�駟��;��Q�$#��͛��e�a���0����64�C��R���4A������Zp��--�!q�=�8�v$��"�7�6`�^ځ�����v|E�Tr��Ł9訤��5�z�y�\���
Mt�83��Ia;D�Lu�]�e���߈�ذ{%?�K�R�V�^�9[LM��.6��)S�ƨ�V����[�����ʺ���M<�-��(�������1(+��Z��*}|Jdv���o���2[!�D=��1ve:����iN򶶁��c�z�yi�YT��_(��S�ԓ���"�/�٪#�������u��(Mw��4΋X8p���Qo1�&ˌ$�Rk{�9}���M%˔Z5;�oTGD�)ǧ'�>d*ӑ�d�gl�L�	׺@u
W\-N56�9�>�rQ��ϛ�*P'DNq����c�8����R�y
�/c٘�a)�IL2W\Q:M�EtL[�,�w�h����')TyߐZLC�^�5������ZZr��� �kf�W�܇S�g�h���5���>��8[D�^�H������Ipkv]ЋX��n�h�S�	U�-g�`��7�!IzS����qIn�5�����'���[�]Ue\|����R`>^���$r��9gvc's{~��9�
/�N�;���yD��t ٕ���WeMI���ͥ~�HRy���R��V5�u���[�ۋ���9B�M��~0%}��^ؒ�7"�Ò}��1�:^�m$�R�_�-���9"������t���8m��
�����\�7��6��zS�?F���W���A�D�x�A��+�"��M1�I.u��8����e��7��kE����ʳR��{Ȭ��7,�#�Ԝ��F�B�)�D�R1����&D �XYaKA`\���]�����%��gW�pV����7��=��G���Jy�n���f�I��ƍ��	��9����B�� t0�\Jλ �<:ds������q/6tE���V��w��;S���Kw�Ӹv�+��#ʄ�n\/�
���>�|�,�Ǩ�n1'����2l�	����; ]����<�VG]Jb_�گ��Y}�{�%�R����GA��Z�����5��:��Qj�UPx�<ކW� �   u9wob���ȁ����qm��8�J���WC�����wӗ�4��5�O���cB�,b�,�\���g��7V�ю,qJX��Ń�,�&J]�[�b�I����H�"ׂ�=�5ZL����l����U��%V����u��ݷ�t���|�n܈-�(Ѩ~�>�q��|�k3�\�[�?̻���?t�}��F6�i�w�w�ط       )   '  x�e�]n� ���@!M�R	���^�h���鋕��}3��8�T 	�c��<z��r�J�m�̱z�߽0'eܦ��ѻ�Ֆ+e�q9�HYm�~�&�q��kv��N꬏�(B���� Q|*�8s�B@�OkU�oTn�?����k2K�h����QZ��G�ܫ*3��M{?��8��\�:�2�MۢN�h�}K�P��/&��J��
�Ү7|�;�����O�r	b�������:_�"�:h��3���Q�������<Gh�[]�I��˲��6����-���ܧ�Z� �f�       ")   .   x��M����
>��@2 ���<�(���3Ə3)��Ѐ+F��� �      $)      x������ � �      )   Q   x�3�4��.HL��M�����LQ/V�ptVNM,J�Pp��)I-�4202�54�52S00�2��26�30327�50����� �QH      )   [   x�3�t���I)J�S/V�M,I-�L�)�L,M�L�KN�H�I�I��2��/�KWpL)�)��.K'E�˘�=5/�(1G��T�4�tM�=... "6(^      )   !   x�3�4�4�4�2҆�F\� �Ә+F��� 3�j      �(      x������ � �      �(      x������ � �      �(      x������ � �      �(      x������ � �      �(      x������ � �      )   �   x���A
�@E��1\A{�^��!M�̠5C&
޾�.��E�$�/��U��m`����<Fg�O��&��<�A
eP��5X����W_t.߄�`���۳PHEI��$i�F"�@k��!�T�\�W�h�Ǧ(J�i�%�5�$]LȐ�J���E�dy�ֿo�s/!(��      �(   �  x�}��N�0���Sx	�"��,�
!$��RE��֐&��[(O����:a��w��;!�H^�eA�JZe�^ѽ��;�wf#
b��Po3z�n��P��F|�C�  A���2�:�TM��*���\U)@> գP�Ķ4��A���d���v��B��zD�vjy�Ӎ ��1@���.Mkh/��?���L��el��K.�s^DT��3	0`G�X�itӓH ��k@�[�`���@�Myb����O�x��������Z��x��.fs�;={Ӷ��Lƈ�@�DĄhó,ͥ(L�oY'�����-�-��vI�[���f��:�5��춺y�
�o'����%snV�Z�~�g6�ٌ�\�(�v_'�ů�0g�)[�����lHė�y<K�On�],�5���T=�]����U�b�N��㬁�a����52���&�*̫����x�i8���������OP�r� �|������6�      )      x������ � �      )      x������ � �      !)      x������ � �      �(      x������ � �      )      x������ � �      	)      x������ � �      ()      x������ � �      )      x������ � �      �(      x������ � �      }(     x����n�0���������s��)h]Iw�J��I@%ve�����K(I�H[��3��1���<���I��S��"%��$^e�J%��d:�����ԡto��ڛ�,�{d�F��BϬ�#�.�g�Ih�s�&����d8S����X74mb�v�A�c�B�	[��z��\Y��3p\�O������J��E�C�2��I���W��^�@]�g�\�����;dP�!s���:gB��/s���b�|�VKZ&W���c:�3����f&�*�<>���8�	�O��:�'G�ק���ۧ\;���{���1��j��5��A��?��9�\�g=���i��!�-�Xa}�����4*ʄ8�(�ʰIRޫ�;�;�Q�5_H���X�
�,ߟ8��G���С��<�N�4��&��fF��*�H�Y��pf��t���Ce���(�-�n� ���U�9�A/vPuAt�C��&^/R�d'��=�Ck1��D����oݺ�����o���sT��      )      x������ � �      �(   �  x��\K�'>�~�;6±��m$KkEH�xF��t��NuQ���i����ͳç���/HH��qWrY��+�y�kD�JVRUКIu�ޤ�%�����<�LZ�#��'����������5��aJ�N<O}���&�#���7I���8�E�&��u���a���/�bQ�+�"oTqB
5H�� ��BnQ���{m�d�D��-�ӉՇ(�d��#�zNL�6�|%�e&tn� ��k��;gD����7�)mU�2S��.�ϴ�i]jAg�_t*����9��R�K��+Q���%��ۊ*6q���'�����J�f���3��])ꚶ0�?ȃ�����W޵5��i�=����d�U�igl��$���]Ϡ�W�A�F@o�֢�a*��M��h
�����*�T�8x1ƨN%�l�����+�i��r�^9I =�B��C0���N�(E��x���;g/0��yor�H���[uu|��]��9������*�	DQ;+�Zẫ؁�5:6��|��"��$���TR���J5�վ��{f)
��`�0t��~�ܑ�ېi�3���n��<��ԍ>��.�<�xS�}�``S��᧳a8�l��a�d5��
�[�Ü!�k��h���(y�����!��9��[�D{��������Ex�huơ�$̥`,H�m�P�X�k�"�ó$�a���}q����
�����H\t�����"��`C�p��	�&�vSc����'sc�;���iS�V
�s		�dI=����::�с������CW�]�*����ep���>C�{�Sp�PB1�L���n�W�P�X�����g��U��f��q^[�� 0Ⱦ��g6��n|K�De�^`�jLg��_�v��0�)?��H�� Y��*nxLr�$,����P��3�����Qdo�L%�� ��Z�^8,o̶oC��x9O�e5l���.@PC�N��������+��2;��T��n���$�h�m��-�,3��	Nv�Ev�I��&=\vk�j�)�2?�e�.��dG���(L�rNX��ڡ��lD��	��dq#��OP?P؝|���h�\n�z;7lr�x�s��T{X	lc;z�xw?.�gz��U	�[hr�E:+�i���FD�Q���ڜ���]����n���Q&��GJ�n��rV0.�NIFC�T���V��|״��y�� �E��q���������wB��/�r��^�y 1T�R�\t�^o+��Y9���Ϡ����ڈá�3q�1ﾚT��dJ�~Cq��*�����=����!$���m���R��+.�辆r��8��5�J~�x�wj��
���.���P�:#��7��14{@�K!ݞc�����b�ʸ����H�iޡbh�zK��8}�6�n��������3`��^�H�jP�����4�l�t��\C���r(�Z��Tk6}E�ڒe����s*��-���^��]c���.��{��g�TͽԷP.��{ޠ�*Qcm>�C[3�'(l�Y:;�o"]ZnI�C
�K���.{��<��ٳ_�,�Q���=����y��6�I{\Bw�\߯�����2�j���6�t\l�c���hF�l��V^^񪸂%�$��p�qҘ�����2�j�e#��e������2�j���|�-�q!�\4��Gm��D�-@	�H��6��.�+��b��u�ݘ�u���q��&ҍ�a]�2tv�l.�����5.����|ʍ֋�}LuW�?E����!�e#]ūBO&�^�{�Y�w�e9������&ޤ�10PΣ3�(m����:�.�S��х���P��g�?x���t�`�+-S#��
����TygcD6�3�ul��3��Y������~��Jvp�<@2��U!��} Z�ؕa�a�N���@�[�@M��`x%�{ȉK�nE��k��b29��h4YB�-�[A�@� ����*u*E�(���h�CB�$��<���u_]قX=��e�E~o.���;��g�`�a?h:u�[`t��"�b���O��#A�R��؁7<4��77`�`x5�G�z���B��|}��b��h�N�{���k�*�/�����{��� �:�Wܬ?zZ�NA�?�|ax��*�4���Ȯہ|:�B*�$�$��""�*��#����HDm3�e<]+Ł��כ����DoO��x<��v����P����;���8�4y3Ӊ	\�4�F�f�(�y\,���j �g�<*Y'zY:]�i�5^�H
��7��%h�MR.�f ]���J�͸n`�}y�Z�5�v4��p�),䐕R,M��b���_�u�-칺_��L��v4�2�eep���6����9�ps.E��a��9>W։Q}!-vk�W"W�:����Ok�	�5"��3��������~$�y��3�JZ�E��&|�z��7�"�J��C�D[$ߗa0��zI}K�h�,��h��\��X��u�|y�����xa�xZsR�왾¸m�t	��~���!���'	_l����8K����M��>Kֱ{�D8���Βr��������$�O͵uW�4���d@��i}��rзRȬ�ݎ���r���+��?�C���HR�,�ûĲ�Y&����$ɼ�T]Z�:K�.7S`����3�:�:�,��8<�bΰ��n��,Yݹ���I3��%�癩�_`m����ɒh�_v,ʸ�:K�y���_�Z+N2|w�$���K�9z�h{�ڞ5�Dr��b�A�L�u���Hg�_����t�3�LM�'�[��g^�������D
|����z�rY~����4�=���_�D{9E�"�e_ho�z�ow;��bI�M��^l�_��s�s�gO����3%Ǌd�K/�͑Jg�x���H���%?&�k��J�9qIܳY�(ۢe�q"8A#����EK�XI#�b���w��J��g�l�Tߙ<���K@�N�WF��-/�����n�G�"J���%X>��v�U�@~_k��A�ȟ�쒩^A�	y���KK����Ě�X�*����7Q�k��!z�X�G�'j;�N��B�M5���񈱟�r�|�q�d}�l���r��lZC�P�8�3��0�B�^	�/}�	'y3���޸�(�Jɘۓ�z��%[����561�b�B��k��`�,V*�؋׹���e�7;�z�)�kA&0>����g�$�,��];[ո|�N4��~�k���kN�E+�:QEN���ڝp��:1���x��ӑ�~
]%�;a�W�X���ȃ�@��s�|�Qx��K�	k;�,��}ʉ���/�W����ƚV��C;�V��&�&��'��Ǻ`��A����`f $}Õ���̳�)�0M/_}���u��,_�.�L�Q�9�Z�Q��0����~V$wI�k8�&��ݍ�r����G�;n<��f�[p�,����z��gE��%_8Q��!!�4�Y�� ����~��+�>c[�d��|f�
s�Bʨ��n���a6,g����4O��e�q��uG��,��fa��[O	��[�
\����G^�,�ye�>�,�yq>Nl#[+����w:0��ӕ� i�E�y��<����%#�:�qv�7ĺ��3�?�⇥1��1冤1��vIc��]0�ݎ%�g�B@���"���Ϧ�A+^�"�?}0�aD�;��'��ӵ��k��͛�57�      &)      x������ � �      �)      x������ � �      �)      x������ � �      *      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      ^)      x������ � �      �)      x������ � �      �(   $   x�K���.�I,I�t�L�,I�Qp��r��qqq ��6      *      x������ � �      *      x������ � �      *      x������ � �      *      x������ � �      *      x������ � �      *   <   x�3���+.)*M.�/�,�2�IML���KWH,.�,.I�+
s�����i\1z\\\ �7"      *      x������ � �      *      x������ � �      *      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      z+      x������ � �      x+      x������ � �      v+   �   x�}�9n�0Ek��؄�W��/�&H���0Xt��G�c7q�? ���$82��Ɖ�	�f.�@�|���Q�%�K���6��V'��l1,Z��d 2�g>Ȱd�wRN1�%�Tb���|+k}�q_O�Rj��շ�z\||m-]�S뭶�wQ��#������t�ԉ��	�Q����qNZW�B& Rך���`������ۅ����4�7jh*      ~+      x������ � �      �+      x������ � �      |+      x������ � �      �+      x������ � �      d)   P   x�ȱ�0�:�� 1Cڌ@c� ��/٦��p孩 �2v���3�����M���q�FL�^�G���f�h��-D��wC      ~(      x��}mw�6���}~���8>�l�zu��wӴ�ۻI�mҞ���EBc�TH�/=�� ) �IN���H"����`i������"�W��������������O��f7���ߖ��������2p"�e�{�o�ӫ��;Fn�_��#�v������ߝ]���w��!�.���C���i������o�����A8�~���<ۼH ,�`������5�1͗/_v}���!��h��G�`{k��(Z{��*D3��1@G����`�ֱ�D�"p���8G��;ȏ��Qt�M_������p#�����2޾���KJ#�v�4�T�M~���r=����F2��<�Mc�Y620�Q7F�a[�IlL܈�%2��70"Zbh�v}2��p���~q�y��a�y�92����d`�ȳb�n��Q��b�����[w�b�&�s�{��XYa쯗Sv����Xw��t�pC#&/��]� ^�Ȱ|�8�>��z��y�=r:
�^��G��a����]���74�ؚ_�[Jo�2E:�%}{�F	t����o��\O&���,����
]g���\�o�Bw���?�	?��cc��z.���c Ǎ	�-�������:�d�p6�x0���q��˼_���kk��͎Q&=�7f�'dǆ�Ƣ��#����1�#�V&h�c4V�_�vl/�����gO1��e�d��/�o`��	qi�	"G��d���>��B���^������{{��֙�G��	��_FɏoۊU"������X!~��B��?Dh�&���!2�[7�";����ob�=�ҘL���Ҏ�lO]���.M�n��9��6�g
�]���O�9fh����]Y*��R%�a38���k@EF�Y�kM��{���~�*��M�b��/�/��g�I�<U�e"�墼�L�~G�j�wq�N�\#�*��1�R�)Q��f�;�m�悴W����:����C�τ􃵾�����}������|-j�t�2�#���o�]sR[|���.�� n���޾�nF(��;�f���>#����͜���0�C<�/�H�L7��e�"���9�q3��)�3V��Y��>f^b�}�MSv�7�̺��2p�qEf�G�O����Z�����	�P���xq��Yk�u`=����4����F�%���;�f�ŭBg[i�x����('XeJ����Q!R��h�W�@V��IL������T���}�"��Y�����&�cv��O9�@/�=�~�M���[���L�<M����2A~wg���
���E8��ث�;^[잩(j���'��L��J�	5'��̴\�~f1
5���:�
����n���L���m ��IA�3I/,���E7{�<�mY�i��\�x`�e�̫�l�,%l)c
�&�"�/'gL��ޞ��h��� ��q�${Xm�X��!e���
@Z[1����iǍ0�XS�	��-rĕ��_zS�lPs\�X�f_�D����?aQ<���%F�W�%�`��I�A�i��	�m&��Xhll��c�~���rf�� <�$��x�_�A�����?ٖf_V'O�������r�S�{y����Tb�N�	y���x�@�Z�Kf�t;�`z����~;�?�ɏ�g�!~��d2Tz�
ޡ��2uU������W(���U��}���o��
���5����nf�&$�ǒ7�zv��8���D��r��#�7�R�ꓖ5�)��A�
B�&mx��&�)!�?C!"A#:���[N����7,> �+y_٣q:3�. ��᪦�:�j�7�䃴��"}�Zg��`bV&Xc�d����oJG<OnEf��e���v�@L@��T���lTD��u��^~�88�=��#g\���0�Ҡ�O(
֡]�JJ���9�ҔN�yD��� I�������b��*�.-١��5 -����$VB#Ad�K0��µ����	�dy-�Q���03�sO�e�S��[�G�z��.�9�4?�Ywx��(z�2w�|�,iyF���UJ ��Y|o�����ŸOǵ*%0,݇$aokݍS��:���۩H�	���N�1OS��F�#?Dy��&gu�SL��)��
���A�9���吥�������*���<
���T���uED���&���Ġ듷?I��ڞ�G`�Ȃ�������
z4?J�H���Fv-�˝�C��	�������{V���$�FQ>��/���|���O�U52KsjEܼ�%O��x����i��0DxU@꒤8��<�����AX)��wǵ���,��0ܣ����0֟�_�;��5g�Pm��:�j�|��)<�`m�`�*� g�1A:Z/�5�-k�֔�R�=xluxl��`�(�:(xN��b��B�� �~��`��-�3S�ga��4n[�e����x�������YP� �� �#n�r�#Ñ�������<�Zg�N�@Q-�C��I���#9���e8��u؞ �p��6t�$+uHV!���9F�j	��� �\o���
u�z������*����+���W�1ё����m�h��Iϝ�e�-`�6�|H�ܽp�}F*b�:�w�\h0�İ�\�ʮ��x��������>1��ly00=.m뭪�7p���߭��,��ڤ9��'Eހ�o���(|���$2�W�P�Q\�p�G�+�>ǲ�[G'�J��Q�f�y"�ŊD��P�L��>]Viي���E��J�К�5�`N�%|�Bw?y$p��G����E��]uB�5lL�:zE�U�v��p�c�Q�K�g�d��k~F�5u��,u95�B��z�#��D�(���@qܬO���� ��j�O�gW
��iA��^"Rb��i��۟��A�l���Ke_���w(��O���Q
Γ^w{P$Σ����C�y�5W��p~sm_Ϋ'���؂���X��p�>�{��bW�-�A��ֻ� pV��$@q;��\�bg���MA�^I`�PpT��Kۀ���.�Zk�/o����l�ԝFV�#%u��� PL���u����	�	g���Ec�ml#5\g��le��?k*^s�¦N�(&���q�r���|u¦�=���E=�n$F[�z����jE������Y�°�X[�����t�0��`���s�ƙ�����΁Ӽ�$T�n�,�V�T]�I,e�IT)����ƿq�ѝ2w�u��Y8��Z�f�Xd�*�FJ�98����-���j����a��X<�u%R�	k��=<�QVY�kw�bݜI;�����@�S{�)�	mVH�}ʿFJ��?�X��������w�����ߔ�7H=��,��;�m�� `��?O:'��/)�β��L.�b���j6q�}��<(`�Mg��Ïp)�]��(�F���U��t��N=��� K��P?0����+*5W�Q�`�Ҩ���9WvR"�ҡ%%M�Ȕ.8e�_���-�����CۛD2S��uy��y�!�{GH���_�lC�G�9O�:Bt��;C2�&��b�(֡�$�[y�%��1&ȴL,<!!��w����l�9)6�h|K)����3�Wɮ2����a�0�i���j#��jC��7�#nF+�'N��5 OV�'��I,|��K #�N�(��6�ӄ�Εu����
Jo�	����Iy$�cˋ� O\�[ᓥ��gᓵ>_58e��\Ť8�3��ƷT�3�@!UE��c��7�=�`���4�{�ɛ�mR�G%惵"�v�@x�x1��՟J��(�zհ1t1������T:�����x�����}��{��[WC �ɫػ�u�e�m'�R-����|L����rt���(�p�A $jD��������Y�>�I<��^� �S-���)��̹n}
tE�%S+Vܒ�Ĕ�ơ� nzo.ʬ1�D����{�$�pfz�,:�3D<�Jon�����x��?UB�n%���_u	�Q�P�Fg��x�    �dIX$��9��%��C�a�dp��
ׂ�=e`���ǃ`2�)9*�bW�ǈ�x|�҂���E���'���Z���c��(}ZA�{�]�t�`�[޻DE݄��%fl�dO��QxEł.;⩖�ׇ��?�+�~���h٦H^����P!#|�V�J@��Q��mq}����9,~�5
雘�9ӻ�y�$)|�]��/o���$w�31��)����ڑ� ʥy��x�q���$�POS�^���:�ղ� ���7�H���1�N�^Ƶ��6yi��b!�)�0���_��*hL�Ѐ�|��H��f.�u4,-4�j�hxKU,X#LŠ�K����#�|��l�v=�����56���˶Q]u�g�1�a��'8
`Z�(B�]v�l��Ɂ�B�З�9�ʀU��)��.Fc�g�3I�,\�t~JnV��X��G�[R(�^*�nd�4���{���.��S�89���7�qؑ#�F�]�ҍ#`��â �;�c`+T4��7 ��h�Uܼ�����9�37m�x`�]իGjeV�J��P�����co='��n�/�X"��"�<�gl�P�[td�����ů֎�X���� Z9aT7�āR��p��W�a�+S��1䳜��
.1_drP1�� T��X{��rcF�#��u��k�¸>y��`����C�K�-�XeF"�9������dF�.Z�V�����!��7��jE.ɘ����;��Q��e�ÑZ>���]�E�a&�R�3a��;u=�H��q~�%=7�X��7�y�ʷF�.�-`�ݸ�3e�B�k� �j)�F���\/��bճV�4����ID3�ܧ>��c���|�6{������Q��>�Ը}��>�~�z@�5��PmT�ݖ�yH�3��0��R��~�FT?#
��vD�Sc������c������������XEiIn��������O�y@�������͒K�[��x�viLT�N��po0���>�l�ˌ9|R����H�޹�%�$�S��j8tJ6S��K\:�N�ߓd0��� �.K���g��Au�n�R6jMD!M�Pέ���Z���;�GSPsiI�U|JoҬ	��#��kJ����{�γH$���� ���d�JbYɇ��11���f�d�W�A�xC{A<��B��D;X�џFP/�
c���;��>��Z��0�!w[�.$p�2m�E�6�t/� �,o�Q�j
&��e{V���H<��l�dL�U�lD��"ri�?���e�s(TlMp`A^b%�M]Э�����g����HOٻ���yC�7!��R!��q�ӣ�+k�u�4�,�_uӣX�dC!��/�!��F��Se�d~�z8TJ��)�{�]P�P	u1�rS�X�vr�Vu�=S=�4{=	V<
RS�)9|������QO!"�;�c86��if��n�!��W�`g>?뮚�/���NB�h%خ�A]V!R��-��˞`]�+2��f�h0,�𦰶���u��`�������h6��A~��
������^�`��n��(�FS�]Tt.�P�ߥ�bA��e�%A��z��Q�F� ��؁a�_c���S�egcj%M�y_Q�X���T�ĳ[o�Q������~����(̠i&���
�NZ�yQ����q�{�5�?Sr5�G)��$��b�L������ ��k`Y��J~�D���]`T���௥{�#��[��S���>p���Asg������p�D[TWpT����k5�oؙ,+����fk���>��ԙ��L/������P��m�)��/CL�y��K����CK����Opy��\zP;��΁,)�( -�`55������S�J5��l���ث��������J�c�XP�r23U�*T��d������J�?oAI$(D��9�d2�v�q2��0<��\L�Ȗ��[���d2*Y�r���gLka�Ϯ]�%�Ii��RSϽ��A�� :|��J��]R��БaSyd�	��J�҈ֶ��.�2V)f�sL.�S��/�2�	�@��[�=Z�GE���M���0��$�o=G�����=�o>+��@�s � �{t��w����l�z^}����_��s K�\y�c�O9�ٞv<�C/_j��=���y�PX�]-�����-��V�V8#d�}�cD]��J��	�F�
λ`/1���/%�򋔀r��/o�����v;x�Y�":����!@�=�NH:<�{�t�&1Z�N��)
��^��Ӭ(����=T���;XG�m$��n>�6_O=7ZT�`xts�9��V;)87r�	;ˬ����������݀y�6��dLʨ�m6���a��+ǚ�|�U�ᯏo�)�v�ӓڣ3B^x-�uN֡�nz��Z��%���[�_�kt�a���ͺ՟Y���5K&�z���l�S/Uݩ2KWB�ji!�&Jh��t��F�ׁ����&W�B�I��w���]�>�����l�[W��:B�|�'�
gm��m�r���~Q�eC���Z���:��<R���t�Q��]�y!�,DɄ&y�1�x�v�V�p�wg����i�� ������㞩� �[d{n�R�L�a+,�~{����+�y �D!�,J�Q�@�)%���M��S���2�@zU��,`g7_9�â����=܉̱VD��+ѹ�.���h��g0�JMȺ��ʆ_Q}��Y��U�o	 ���5���[Hs��i]���K'�e���1uq���������͎4��vIE
��\\��6!�O��
k3���pjj�<��L�)eq��ⴉ�VT��B����cS=I@՗E�˒
*��2;f�ŭC��^Ć0X5CHH��m2�j��B��ɨ|/�VP�렯�K��EAMr]0v�>��t<��|�V��d`޼ ���r��U���7ի#�%;t8t���{u���� *��S�h�>6���+&	� S1q���B�SW4eE�Io���M��d�
ܒߓ���t��!���+$ݦ��@➮��dw�7@�ob�8m[�F�(�i�21�B��=ˊ�H���IX0�(��y(�S�$��!��o�7�����@�^��Gw{�V@2 yxQGqi��*n��w��%پT�ǻ�1q�(�&�)7Ȕ�2Zt]첗)�oR�j��,��[)ґ�욵������91[� _u�F�p|������-q���&�+��G'��w����P~LX�0�wo9Lʸ����~�M�U��m[�
U��EF�^��K�*�^fu��$���>�H�4D;
����'�xJ㝶#u�sPw�����l��H�1�y5I��/#W���E�R'������o�0KLJ9m��Le���h��s���/6�+;x��`>"���dhe&�(K�ςB�viz���Z�*��?h��.��5`�L뭡�!Q�",TZp��@��*p@cx)ex�����/���f�[�*$xZ�������=�m�{:
�wt���B�ٸf�²5ڐ	H4���.���эoy����Bq|t�-5L 	�v�!0h�K�F���w�S�AswBl����H���(�� �`��,��p������;�v#_u�?4G�]Ue���Ő�`�+|���O�s��.�Xq�&P�l��|*q��v�J��,׏^o��*9[�"L���^�|�P�����#�g�-ݥb�4�REǧ���)$�p�{��fO�e�$�c�o�������3�T}��b{������W�DSڕM�Bސ��K+���۰��T���JE>��Rf���:�f3_�6�C�� I_c�dꂵ1r�/-�5E�lQ��
eU����������ӂ����5�e�T��s�/>�e��F�Q�G�����	�
��Os��m�T�����T�����W��rl��P�6&�VgZ��&ܦ?�ټ�,���A�k��S�i�sf�[O�Z*��|�y,�e��JPP����8��������2FTY�eL�\��T�W=1iz    ��l9B������i��N�A	��ю���dc���чէ$�D�S�^�y<-����Y�Yl�Z�Kw =�ƋtDf�I���s瑷�I\���W,��@W]�E`�W>��ؔ@��قڷ�+D�iv=8��B[��Z'7������x�T8q�9�jl�bɩ����Y��F��4�yY��4P�E�Z��n����:�D|� ^����X�Q�CJ,���G5	m��/�E����&���٬�ea��������W�5u�B���_��o����=6q���G���ZY�!�*�����c�z^%T����F��Wh�7�W��m�WxvoL)��`-'@�HG7pl$�H��P�~��	�D���X"?�^*Z�%� [���i��ԎP8���kՇ��W�V��� ��5��ZDՖ�B�K��-��A�Ԧ�ZH�r\���C��o[�N5B�Y�{�b! �z#�R�>J���t`˰��# <��Q��9��0ʕ?�F�P�&Y���|���`��Jr]�w���JȲ�Oι���߻��7�Ü�x� �!b�n}N;��l���'<�RǠfQ>z'�c��r��b� ������uNs�:LO������8e� �Y����2',%�p�3gWU�߅�/Y�3� ��$���'"6�Jo�D͈p_,�_��?D񣇢B����e�D��-�xu����ߟ{�}>��A�n��<,=�.�����<�Q��~������?����?�>���r�TO*�x?8�y�|��e7y�y�XR`�o_���ov#lKl��<a�����Z~D��c�lo���Ek/>[�h�>�(+�d�����O�6H���td2�ϱ�E�����0n�ֱ�-�E���ޑ�-il�^=�՛%l��O��?�;�P�0�_�8~4�Ȱ9F��a���z�n�e��7���hb|
-�tGuta�O=�3�0���I�S�&!!E��E��C�N��nd�..�/���QZ�:2�F:*�}���~ZLÑA^t�^���Ҽ�]٫o�}�OA>���d�c�y�?[�Qlٷ�r;A�w�䙳^- $� � A���.{�K�������hyFZ�02�F02�N#�9�����#�u3&���0_^&��Ɇ}��������`n��dEڃ��,�=���Y�B��$���������ͅ�F������{{��֙KxA�'��e���&+�+S����X!~����{68��Y� ˅�����TaZ�����s78�oH�3��Oi�|���`۰�ݜ�TX@�sP�1mn��!ws!��ĳHD��z���4$��A�(}֙t�S�>&�>.���J�~G��^�∝�`=^Y�$#�݌t���HBB��i�����	��A��6��a�/�_�����2���w��[AǀX�9d�Ű��p��o5*��N��)2&Qa<򏚝̙Nn���=ă�����t�0�]��'���:�}�c�O!������$-4�s���I��b�^�{AfR�Q~��}�fK��bl.�_�&DgȈT���l�^0�RUŉ�T_c�^�X;gF�`P2Kx3PBҲ|^�A/�|��K�}��<�;g�^���>]R+��o��1;I������.��Tm�d�����i��&�_Z �i�Z�y��'n�6��:���̎*�	M^_�{ؖ��U�WmIPQ�%ꢼ�$�������k~+�k�n��m���5����%.�O���Or��D����e�ǮW��O%��$C6u�Q�T�֬
V�>rJ��e�+�-�cĂ4���xrsa���ep�Yu��S�+�{��w��S�C0��ۯ�����#��c)��z��U�w�l����Y�T� p�W�x���d�u�����?�y%x0�-��%�_]KƵ�Ψ��2Y�%�)OX�tn�*y��˙ݒ{+N�J/H$}sa_��x ;-��X/�o}z*4���@R��^��.�F��>���Ы<��	����'�h�{��t	X<�%`J��c+ʊ݈ %����ʯp���_>�pI�5"�$YAx��Zamvtc�{*�A�M���c�"�d$��\\jEF��z4�+`H)�����Qp���oĂ�f==$���I��$��fU���v�����f��-9�tm*���e���|3�Fzٮ��$'*^�t�^I�*�K3g~BQ�.�"��N�Xrә��ê ��!�|��}�|��A\Z�zsbUD��"4"a��X&6%6j'���9��.בv.n��o���;���?�J��q1����ZO�����<�]Zs���st��H�p��$(^���D~�fI�u���(���V�:�A^�{t\K��z�t�1�C�'�Bī�\��7mRG+��}���c��b�g����������T��O�+��������r�R?Mr�$Q���~�(,�� I|�X�D���xh�|�MW�>y�#M���P�?�ϳ@D���.~���MŏR-�,{>q�~��֪ȑ�+e���_�E��{V���0PI��+���$���D��Bd$#V�ԊPc2�����bgX�Κ}�8z�5;R�ő}ő}t�,lM79�Jqp<�8��������ߣ�����՛�_�;ո���Pmގ:C�yK�.`��`}�1)=�e��h��?>V���*@SDJ�v �U!��r�y+@8�@๖�lk�-H�ۏ��R��Hf��,,ߙ�m+P�U����3��е��˟Wr���nե4�ۜ��[\����L+�,U�(�l�a�Ua���z4����E3��u؎����QRm�V�0�B"��%9���Z �*03�[�9qB�b;%hi���E6�s7�J���+O_d/|b�!Za;Rr����x��$�$� nI��+�e�g�!֣��q�@�2�H�RM���JV�K%�~�kf7����T���*#�k����6K�����G���ѤB��E���oqm�x6��&��=yT�0��b�U�/8�\q�9���l�)Ur��2�h!�%�-��4,��ɔH��4����"{�3)�t�����i����U��&��n��?r�H4y�h�F�a#zl0P�#(����8��K�֍iN2����-��&,h,$A�WuG�RGM�C/�^��A�1"��W��� ���x�����ȪK�ܡ�\�d�O���1{�;&p�Hu��;�,�o�4����Z�
/n}�!�$#p�Z*������jFy]`5`@�\wl�66�"�{�6�@9�=P=�nc�w�~�6���T��oG�-NuaX���D���֧����_(n�����!Z +��pm�����V�M����d�5=��86�F3�k,ſ��]�w�;Q��X�ː��\"�8��ۘ�Cg�B��3"�u����4�CS�/�޲��������m�M�
� �p�з��M����y ۞��BP�d�e��m��I[䮇FUN�:�<+Z�r�`��U�Ŗ����y��(�?��+�Y9�5p��;����U����rh����
!ŅV�C7�k�S��lI4	�j�cT�i������h���Ϡ̞ ھ�S;���j�a�=W�2JXz������x�=u�ՙ���<=tҁ?V\�
mȕ	��)�gpKv?�X���Β�^H�
�3��n����^cvN�<�0�'�z��'挱P��c��cb�P�O"}6�/&��Ҏ������\��jE�(�I�?��[l���C!�s<�Br�\e�rSI���qO@e���f���e��ڵ>-X��hi�R��7=�Ug�%;w$N��X NKF��=+���\�U��m��TRQX[�з=Ii��CWO� $���_r*��5oU7�/s5����~�S��{��i��:l�RRUI���C�Z�Y�	���2��If�}�q�/WT�! \� ��0#�k�2*�H�ű����i��YϘ�d�'�8������{)���n�d7���T��3�Wi/c��O��G�p�yf��g��8�6��'ݩq�� �d%|
���'E�S	\��iqJ��W��qaR����    ���c��9���<@�G{;)Wi�y���+|r+|�>�,|���2o$�3���T��tY�Y�ʌJ��!�>�Hn��k����^}^���a�){g��
���M�Tڹ4����d��Н/�o����*�0P:�m���<�y�K��i9E�YbP[+���ƍ��q*D�����ب�&ǳ/F�7S�F\;{Ķ_	��6p�T=�(�{��l�*`g�����XǑ�by�vp��2����#�\�I��믓P,������g�0���\0�3�~"����#��Z�%QKy�R�q���Nի.{TJJ�&�-m?�e,�(d������+p%ϒ�s�6����o~c�"cu5�<�O���a��MY�~F'��S�g@���3���M���E�#�fw�e02�&lN([�=��vF��b��w	%?��F	�m"z���XQ��I8���M� w�����zo��5r��;X{�"颉g��F�7� o2a�Դ��!�a�d_	��w��h�u�!���]�n�4l�N��.�(�_,
�	�m%u(���C�%�����t�nh�?,�0D~�\m?C�M�����rp�i�i&��9�QQ�C��\�P6��a����OOϚ\E(/�M]`#�М��0[���L���1)��Jl;튥:_�Z��y��g9�i�@���ݻc�0��w�ix����VL��	޲^)�7�UQ;�҇θ4^�E��ٷ�bW�� �۟����[oY�q�F/X������T�����
�R+�9�X2c�'�ї�4�헂�_^5��`sj�㦡�z�
��d!��5N�0��B�i�ϋ�Z����\6� �B��7	Vx�����`d\Y�D���?��fbl���E*�T��|UV1�Y����mK��m)�R~8OCtWlQ�A�nr�$�O\0+(��|	9FEy_�d+n��/�ǭ��Q�q��б;�r!�m7�Pf�(��%�A�ہ�a��A�ہ�A�t�%�A��A�a�/�r�v���Hr�,cω��`@���z��X�F�7��ކ�O��������R?�X����=�Z�M-��=.�f��wY��abU`
Qr�g���R��n�p!���!���������ߙ�3�A��G�[ro���0K�}4?/\ӌ[bb>���Z1r�Rr��9�*.DE.���c��K�P��眎a�:������x��Co.����]�;Uk��|J�AD��W�S�p�>&��n��4Xޢ!�<��r��է[!��-�����qQ1ꠄ�RF
�X���K���jᖁRI1�N�A�4���CԼ*��u�O1���Ú-Y��bR����+Ѭ
��k �D�@s䣐�Z It�e_x��<��!�i}�|��RZ��+y���Ʉh��\E65������p����+Y
b�MauE�@ɲ�Ƚ1�On;¤]~�N]�)<Sn�^uI�ͭ�=�Rh�^�%���7��i
ȿB!�5�0�7��JB4�߅ ?�?��I��3����s��<�>�������}1��jl���TG}j�>�~�z�O�?�Q���T��v@���?�~��C��!�ϐ�gH!?��Q����#��kL�?��S�_P�_Pm/(�/(�/�~.�e�ECDv6� ��u}2Γh������a�^��)*� (�m��cS�,��c�p���YѤmt~�Ï��ZA��<c*xв�{����k�
��ь�HD;Hj�a� �^J6L�ͥΗ2����I6h�;��U�H��J�:c6�up�� �9���K�����r�0�2���eKʠr(���c��tx^@�ȞE�`~y	Q��G4t����P([�C��g�Bg���)�-��l|F��"�T��dᦄT�i,6�"Yd4'9w�P�Lb�}3�NXWa@��u�XЉd��έ��{ܮ"�H�ǣ�A"(׉q���%���d'׭�qVLu̵W�U�Q�dV-\����V	4)�YUL��[5
����x ��x�����17���!AD!6���G�AE^��Z0�G�-�T�Wb6�[&�d��\Z�y�H����W�u�m��TӴ���&k�����	��1�
nX�$�,�>jZw���PD��/,V�"!8��M"jZ-�
!��,��=+��YV�)y6S�����)��o*�t�.�Ap�4A��p*�B��8kӿ�A�B�mAh|�0�k#\_�.
;1F���3-��BwC�4``Y�5/��2/��9����0����5��I�ph�+����m���Hs1��S�Q�v�3W�������m���GJ���o:,���l}3�L�Ȩ��x�M"
�b5��؍=T�a)�2)*mY�l�+g��vW��T�!I�)���Tb�"�����#<�<oL�^��U�Y��ū��%R�F?�"$"��b�#�T��%j�~�:MS �"�r"n�V����� �%ff-~�_��]nIFp �u���[|DH�#q��qMe��¼��ýH| Ct��t�'Uѿ��^jԈ�'0�߭��*zG����8d�0P���z�`���	&�� 0C��R��������x��)r}_�qOp�OO����[�cVC6��z� �T�ao.�N��Dey���=1K�����<A?
��-{�Gܛ��)�B�X��[�x�����H����'$�e�n��qBqUE��_rS���a��#	��;R+KǢ�R�(o�Yy?+�"�)j�L0���a������Bs�����s�K���,R��e��b�a�Y?���Bj�u�~��CS���vs��ƠIZW>
���
���W^����y��-�ѕ��ܰ���r`�h`� ��ũ�AC�_��5e1'g6W߿�jRu�<�90|�"�T�,ȗ"��H�XpU�d,�6qԾl���'�_�&����H��D�`"zp1�1����dT�%i���0b&�A� ��II��Rs�[_��@��"�����}��=T.JJ�G3����m6eRT!e��_���n_r��)�h��~���loSⴂ�;��D��_�����]�?��������a�S� �M�����������,?Gxay���*���5��/a*?Gf�H ��&��
�+ �}�X����O����ˍ��1r�Çѫ���O5��<� ��byZH�K�^~A�.�5�rp5����v��"�O[g��|M��j#���{��t����0{G7X�ָ��r��l%f��Z�G7K��P�y7_G�m$�k6loN+kv0<��Ü�f����9�]e�w1Z��&W.�ٔ�%�ZBJe��r���0��0E�6�̞ky�9�H��'��V:��<-r0�S/��L<SQjփ+Ӻx�B�l4�$5��3Bx��PuN֡���))m��$y�������aY8�,������ŭν�>�w�U�I�$ס+ӛ�������Z�
;�m+~AF�<�l/z:K|�ZCvONO�`�`]�.q�f�ZPwT�|00� ����dqAms
��y5�G�΀��U:h7Ǎ�V~|cM�'p�UstI׌����R�xJo�A�w9)`�+�֤	fJM���p]�Gr��d�q�c?�W!�``�q�'סWs��;����毺4C�����e�Z<F䦎7�3	�
�UL{�Uw���V�֫���i>�~-�FQ�:���b��
����X��W�+Jګ�F�v�ʛ��hU��
�j�W��Z�����@W;�B;�U�D*֖T_����ǎ��>X���A8�Q�v�.0 cp(K�.9�q�]�8�(��$�f�t��^~�y��Yˆ�q�F V˟#'�����k�X��C���8?�
{�YQ"o����|@>��; �@�*��e�t�@��9z7{����9�"2�7>�pI�,���˳��h�)�p,P�/�k/5H�JR�`��h��-Z?�`�-��˭qiA�+�����ya���T�ɚ�\�-d�h�.�D���߲N�:�@Z��s���E�f�]Q�� �`�d;�    ����A�t�=���t%�UZI�n(����)���PƔI�G�P��ZBM��+�TXK���*�O,D=�g���d�{e���R飳���!Y_�^��t���&$$��l���d�жu2R���-�!/^p�rA=�<�W��*;2i�bi�b^���5�}'�]*��&�'�brj��೛K	��Y ��J��W�ܜ�g&��j0g���/�]�ns2MS��mK-�?�/
�f�%T�67I��V��)�
m)%����'ϫԗ�J�A��e��� Ģ�oV�s��©�+�����G�}�5-���r��^ބ�A��+v�<+�Tq/4��� ��ۇ�*1�!P2JR0[&FrA�>)��$�d��դ,ާwJW@�S�����Od@�;����:V0o����d��.�{[��L=E}�?��M����R�T��'	�z��#�����H^T-)1尿�m��4�ZUY���S���=\�M�d���?}�U��-��>%��M
�]՛��[���U��L���Z-\��m�q��-m_�{�,-Ֆٮ��6�����n��ק��� �6��ʵsɷCCo�2n�﫯_Se}�wK��m�!k^�|�xu�=S%��eU�����G��>s$�������d;�H�>u�y��V���ysYm?Q'�P^:�lC��0[I'o⟾���kl����+8�X�H(�'|���*��	��o��"Hb6�Yl;H�ee�)�(�M���XCI�BzZ��Y��P����t����>+chۨ�`�WYQJ'��c�� _���Za3�̥�\��b^�WIs�w`K`Ξ�P��U��y�,AZ�_���|-�t�;��x�,���"���y�'(�k�NS�GM�cb��Ӭ o�v,!�77� $T��ph�m#^����l�"��A�|qI۔FR%�疭ؑ�$ �a�=�P��wנ�É���
�rx��b�+:&���p�GN��(���M�ZV�ֽ�� .aRTs�cl��:��n�K��l
*P�/M���ds@P��:V̓����t}��r��;}$������Q*����8�ƾs��}��a"� 5�o��>f
&�I�$ώ� C%�D-ʹ�f)�jKJc��Q�ѷg��;�������!^���b|t�-+4��l�pF��;��	���-J
�H�8`�~��:l&���.t*��h3���(��q�c�f uwoXV�"�=�t�G�Ѷ���#��9"|-��Zk�,�5i �v�o�LX�S�����<������lF�|*��4r2�r�����N:�N��x~��ߡp�do��,����F.�����%4��	�>��x��n��S�W��#��\��T6�Y��S�`B<��-<	~��혝b�.����<Uq,��^�t��ej\N]����**Jސ������^��O�a�ǒ;�(EXͯ�%fBk%o��}�0��������1 �z��AYs��-N�r��i�٢�"�d�OƮ�,K�(��/>�e��F�Q�q!;��2$���iOn��m�T��ũV�)�1P����©��-s2~�[����ӟ���.�	%���חÌ��aB9�ŭ'9ݧ�kR�V�KZ(A䙵_i5.���ڪb�+t�,�D	�^����q�$��I���śS�Ixo]�U>� ʯO���A	+�N8U���s�{X�D\��t3���m��;�р>[����ީ���+�x�nTr�5�&������Mg�[�B&�-��C<�5sZvQdk+f#����
\wK뼉jRkL���)6PW�`�tAWfX^Q]e>>Ȣ�n�|DQ��bHb.ŽL�0G�?@����Χf;���%�ë����T1���á�r��� ��$HV�r%j�lD�,~�w}�bprt�*��.�"o�5n�K������m_/\E�c�ke����Ȫ�ߋH���y�P����MCt_��{��_!B�:���Q����צ7�pcE�z�"c2�6�����j���Da��������$�����&��^�b��9J[o�`B�I'���m#�i��sry��s���>�;Ta=KCօ~�3� ~A�H,A�j �ɇ�7�����Ey�#ߙ6�Y�������	b�v& VT8/�JR�;
��ȥy왷R��$���l2��rJ��U�=�U%VpW����#���C2�6#򄑄�"5a$jΨ�*辵U!4�3]f�1��`�u3��NOP�!dt��g�i�,��~Ӕ�q'Ӕt7�T��I0�L��3`��@3`о��
��m-�ϓL��V�<��>a �Ԧ�>*h���ʘBd�2��ͯ��X*ΐcn�)�ٯg�i8B8u�4'#�i�Dc��1+�ď�U�L{-Yl˔f���q�n��0i7���;����.����D���&z�Q&&�3���{'��L;��a7��k*%5�cv�^�8��^r:J�� v2���]�9�",9�(�-���{Ѳ��ͦuw�HX�}��3���f9˭�.�T���0�J.H������!ZbC�V�n�:a�ݩT��x;�UQ��l�p�3_ �KŚ�IW�L�uAqp��B�Vv0����a$��ك�;�[��CK˳�=KZMIkna#�ïC˾Eq$^��cɹ�B�J��4�I�*���œ]Ĩ1̎yz}��	�Uɡ0Ҵ�1��adSpFy~��38_�����R��pfs����?���흒������0,�|g>�(��Q�^QRo����q���.�P����$�V�6���Wװ��D���O0_��XR�@f��8�	'1�2p�(1�$f�Ȑ�9)�w�����e3Ԍ����1h�=��E�؊6~�6p�F�D��P!��	H[\K�)�4�$nJ�ẉ��c�{��Fjޯ�|�b2�7fx�ӗ���%�zYv��ܥI��4�D��t���C�Ն�a�Ǣ�S�K�^Ϟ�s� KLZ��A��D1)�%P;(�a�50�JJx��ZRV���t�Q�����S�Z)�k�\Nl�G�c����t <����J�1�(�!�� F��&C��d�ƙ�+�Q���L�WVޣ���;g�ǫ�ߒ0XP�a�|�S(��v>���7a	�sV��5TR�܀C�M-RBs�
�R�֍�q;Y�u�q,����᭢X�]��UL�kub|�L�ߌ��U��@�fD�/�/B�����C���濖��[���۽��?��|�uɓ���o�W�xXz�
#L��#�wD�v����.��A�(�`�V~t}$�(}%)�����O��f7�&�����o/�΃p�5_�|�M�n_�<ዿ���Z~���6Ѓ��t�h��g�����O:L*8)�u�Z�El cS���,�ؤY�o��F\1��?�;�ti����wxP��ʾ�B����s�虽���'��ϐ���$���5�d9i�]�3��3;2~��T{;�;�h�z��ە����쑁>'�#��n�A���.��2l+B�[�)&��F����׷o���K���M����9��.�=��C�#M�&��ލc���1�:�l��ƛ���3��#�hid�q�4��#^���@a�>���J���߾��18�o�Պ�$멇;�{b�2q_0��n*HN{&�,��bK��n�!�Ҏɴ]2\o��]Ƨ��h�ۀha�sB�MG	�lϊ"�s;ј9ߍ\��Xy�Ȱ���Ə������n�E�r9E����ܼ��^�R���Ɗ��?�l�]n^�N�QRl����0�s+d�y��(��Ѹ�}Y�h	8����O(���wc����"˅�>=`k0���J'RΠd�g]_t�4 �N��nd�..�/���Y~L�dƤ�����X��8������"[��yq9�\O_%\�B�c��*�n����زo���~�H�9�UT��`�A� i�z��ɥ�rA��W�BIgfd���jmo�4~Iդ�?��G��fLLU�^^&��Ɇ}��B�����`n��D�H��[]4�����#��e$�`��    ��u.���ąV���Ŋ�}�p�\�R����_�Z��'��x4�G�'�
����߳�Y��!r Ӈ�2ph��C���ù!I�����F5��Oi�|��t�-���E�Wsi'�T�Z�C⡀g��(!}K.b
��"eE�N��G�F��2����g�I�<U�c"�㢬�c� �=��}������P��{7#�1���s�QHA@����p�����6��a�/�_�<� h�t�2�#���o'�CF�X���
7z�V�����4!�"cr��G�N�L'������A~�E�f:q��.�����+aW;Sf�?����G�`��|R+O*������ج/$)�(PlO��f��Ҟd����.�e4�Y�o�$^��]2M�H�T_c��]@v�N�
�j�W�,�4Κ'�~��Xaid_�i9� ��*��:^������+�f��E��$���x4�;P�Ss�d�����dH�
�`��{-s�4�����ƽ��;T5�μ�2s�X`�/1�67Z��%��Bm�R����+ɓ7R��Kʺ���@]W���� �n�CM^0����+:���g�p�?7H�ײ1������^�"�����+����7'�Bdy��䫑}'��z�.�k���?�F��,ܨI��U��D��_"g��i�:[9K�P%��b�~�b+���<c��!�����*DH��x���xAd�Z�)��1%A/
�[�VI�![�p��lF��^�o/q&'�EA"���T~�������ͽ�`_���a��|��5�!Y�\h�Ԫ��
�Nk�����yx�bߊBye�V���Q�q޵��Jz�l�[J�R�f�V��ޔ�4�}��S���Z�RnA��'�p�	7qc��q�#OB�	�ih��X��%��>������$ҫvd@R��mS
h)��ڐ]5��U��Z��浔�g�*�&����8�~P�n͢�'O�Eq,����>^��^G�*MCQ��Lǧj����1��-���l)�s�����S0���&��o�+�K�Rh	TY?�`�M�2��(��)ba��Re�*2k���e�$����1E~�ȏ˟X���[�	}����~~��*{�irC����|k�<���ݾ.�9g![BZ��$u5��6�˘�c����&��57%{�&M�bоWPnǸ][�1�{��1�-�=��\�'C�U�I���V��=<��FN�&vUe��Fm��A���N�<D}��~���^��:.Jṙ�a�Bo����~��Զ_֌�����Ѫ7D����J~/|�{A'���6kL!k� \$��o~�ˑ�����!Z�������h=!�7�-w�1�H>M��b�U��c�☕���I����E�y�J̵kرp�0}��J����p���3_̲$��v���e��ů�.=���uh3�I����1-N6Yb�G`������̘�+�{\���כ�#�A�:(ǃF䫁Zt��ڧ��n��L�[/בv.n���w��H)�)�-Z��fV)w�	�ZO����$��Kk��ϳ�,�;�-Z�99�/B��]"?J���*�鋂Y|o�����gǵ4�!�	�I%�%�t���Ł*�8[��7�#���8)��e���kY�̽`�	�<-(-م��!�	^dr���������<
� H�Ċ$"LͅC�����듷?�e���#��D�M#u*Wb��[}=����F�,̫*������ZZ�"wr�M�.�*.V�Y�6��
R��[]�4դ�߆T�E�"#�E�V��<��8�G;��x���K��#��(��+���hea���W���a��IM��F�W�M�ȍ�ĭ΄��ߩ�5��jsx�֝�tZ�֓l-Z�2$@ZvLP��K��cE.���4%y�I�$�*$6Vt^0oG<N-��|����Uj2� �L���;� �m��*���=��Wu)��⪂���l�[u)��6笧��$��)�
 KU@��*�
r|U�ux��yO/����vD5P���B����R�aI].�b�ĉ�0�U���޲͉���[-AK�L�,�1��V��L�Xy�"{����*ۑ�;��&��T%� nI��+�e�g�!֣��q�@�2�HUM��c����?赱Oy}b*n��8��Zc��V_�l�^��g��r{�I�������%���4�N�{�d!�e
�mrܹ�s,1���3��e�B�LdsX��y��؝L���PSi��-��;S��d�Ԝ�Q�����!t��G79yd�9J䚊�Ո5P#ְ�6�kEVU�Xٝ�m���)�V^�X��4� ë��g�c�ɡ�C/�� �6*oA \U7>���|�ddՅ��Pcnl2�'���"�}T}���BxG��R��gM�o�;�Ž��W]NĻ�d<���R�>��6��	_GPQ����NuǞ��-P�uGG����]�u�_��pA�Uw�[��eU]�j0,�2p�����+��W���~�6x��
#>�[w������`��Gj�'�sM��)����:��,��VwY��E�'c%�Gw���%'���ߺ��Et�.m<;��Y7��P޷�A�;7eo��-߷�������<��=R=�}���$J�~��d�z,
u�PM [ɽS-p@5���nT��sγ��֏[댮���t�0��`���s�FI���\���y��Ӭ?"T�(�^9���+�iƪ*�\Yd?ݨ�Nq�;�w�=��$���qP96
ٚJg�ƣ��q a����}���ځ�>w �0�n�M¢�w�dt�G�c��.Q�£�3I�]��4���k�]�rl�M���\��|R�s�@g���/$�s�����@_�wN�<�0[*L ���Ĝ�
[z̑�N,$*�J���{�d_�_��7[T
B,��d˪4y{��G���]\���n��
��kP�+^�N���'���
��R�T��]��]{SzɎ҈B�+��;5j'�D�zñ@���0����W�K�B��`��z�,�۞v��_���[�O o�\�T��kޢ^���#m�˜A� �F��_��@��E�Z��ƨ�/��+%5�F��n��UR͂�0��}��)�O2��h��~��B�za�A^��SEJm�tP/�L_��yƘ'�=���4��_�W8��j3���G��(�L��^�����?,�ܔn�g���f����jCO��ʻ:΋��� ���OB�X���*��BZ�~�յq\�Jl�z�r�c����}b=���S@��o��K�V�dʼ���>�>Y
�|>Y��Q�3���O��)�}���l~e6���O�w$���5��x%��>�q��� �@�Y�H��a�X���\zD���c���7��kdm�IPH�
j[�� ��m^���hZ�Nѯ��֊�ti�q��b܃
�)��7=6�Pȱ�Q���®���p�Wµ���yL�#U�/r\��*@ζ�:-�V ��z��Y�����o��j���~��ބ)]8I�5��/��'q���2���h7�_'�Z�? m���aj�����W	��l��/f��pE�B����<�)��\uy@��d��N*%0���F6�*ʲI��s���JB���m�қ��H�\[�-6������^���G�ҶRQ\eH1ځ��j����d��P�9΢]���CA��Y�M}Y �iF�Ư�iRE���Ҧ����pfz�1�F$��9%dٷx#w����ß��L\���n�ɍz��0R����K�u���wz�"s^�c�#�H ���y��K&nD�3��u�-�*�=���3��a�"$fJ��d��R��hs�w��p��{�ȏ7���iC��I4��A� B��F^��Pk��S%DK����U�!{�����=dԔ��ߚ� �Ǎ*�[93��ë�cR���V/D��j��{���x����M��I++�!��#��^-���c�7���]$68c�{��7!"��Y1Y{�'x+XxEՏSԩ���r    q�$a������"�����Z�:Ж�Q;��/?Ĵ��@�@d�f���}��o�ʚro�eS�A��k�B��N=Ml_�a��G�_��G�7,9'���W�I�?���Ro����(�I��Z��
:-�#Ǖ�W͒�s�&�8�⢒NS|^���=Y����	����J(��s2���#���`��������c��q���U��*L��K����'�o�XZ�E�K l9�����}�>��ȣbD.c���"0_B�oQ���!qDĜY���+9�����v��C2(x�����~�L)�퐙"�}	L��v�L}�L��v�Le�	L��v�L�|�}	n{e�b�^$U�C��ET:�nH�u"�zg���}�6�7��ކ������[����?�X����=�9\��/���: �f��wY͵�ab��`
Qr`l�T������?�'��V6Q!��ɪ���9{�Hi
�ޙ�J���촁���u�B#X�iE7�~�`�Қ�(&��1����=�(�68���O���P��*�}�	�����B�1�f�F���Oh�,���Z6rH�ة)66���œ,�/�e
K�E*�",�c��VZ�����>����p��+��xiƖ_*�Fc�5����`U���5���eY�@ɞU�t\�\�O8m��>a��cZ�lP�*��$�Ӿ�R�@[nu�1h��H�e�J��
��-u;Ҥ������Iɪ3�LZ	�Jv�0�SP�L��������m\z�[	�J��ɬd�� �lz�WɌI�V�����eM�رK�UR��_	�Jփ��6�b����ɛT>n��(}���CL�������J;Z����@U2lV���{����Z-�8X"�I��Pj�N�VZ��}4�b�n��K��@�wºJ�n���N%�ީ�9�{
v��~���89_�\G\Zq{P�k.d�] �۾�K��9�\Z�C�V��껅���.G���$ʁ&G�	��K,�aP�Jj�pwB���O�5�4�G��r+�� UZ'v�
$@*Y���m;Դxմ@��p�V�ܝd�H@U�\	�g��	m«d�g�\8_�S��U �wCB���6;2g5�1�Hd������,��o�$l&�U)E�S�	���-;v=�1H����=~H��1�Q�|k����N%��p�v�d���$�!��1���VM�q����r{ȚS%�1�j�pr#��4	�J����hh��#�v'&�R��Zv1�f0j�rF�BxF'q�%oJ���0��@����q��+����!q��'z�R��S.�!F~̃�xH�:���)�/$-�Xd&[��(<D�����P&(����bF�Lɳ��x F��Y>��,�����7��u�nAq������DPd�\u�`!Q'\�p)eL����5�zX�å�<�}�SF�.!�g1!���Z;.*>(Y�B����U^|�P���j��R}�2V�NYu)�N)A҃j�l�/�x��.�/��-��>żsk���Xd�j�@P��P��v ��Wh�|�js-�4��� ����G��!�i}��$��LسŊ0�ӽdB�C�Y5�����lq��N�V�*�%,
��+?�Z<-L��19�l`�v��;u=��f]���K�hj����B&>�/6�+��f��Cٖ���<#�Jp��s����C��n����x�"7b�؎!"AWԀY�2�]�C�W_]���
����	� x�������s�e�
�@-�jRV�oʋ[!���y�᱕8!��g(��;�����g�yN|.��c�2�����Y'ǉ�����K�&�,0W�㽉�D�}Rg�����#-yWU���V��Po��H�N��$T���%��l@c�V�8U+!�!�愞�F1*c�B�@a�
��=�y!@���Mψ�1�� ��k��7�@<k���%t�c ����H��Db(���:�&���,1��ҍ�4�23[�����+	��|d�����e����L�~����yH}Q����~��L�ߧ��S���������mH�9����#��ۈj;�ڎ�����c��1���������j{����gܓ�q��m���ݥ�5�i���|B�,+�ú��:*���X`"���x���b4�\X]�B@h�;��U�H���Jȭ:�dW�줺��j��R�YV��x��2j��h�9��������e�fNZ�Hh��x<n���ȁ�������%D�~Yi~]���Q00�c}��?oY��@�3o)�W]�Ј�y��
��J��^o�5�n�ggidr�F��I2e�6)�"��X�U^�|o��(Π�U|J�6��Ku0�I$Yw��)� T�Vԛ��$�V+�q��E��0����L.K>��IJP�'�]�菒̸�h�ҥ�음�%�w�7\o�������ɝ�ʤh���#,A��d~\�v���=m���R^"e�:�3���X��K�fS�fI2���C3�⬮��}"ֆ�9�؛^� ���j��g��k|�1l������k�����y���J���g ���~}��ߋq�<2V��'���*�n��|��Ȇ��7�|߰�\M���q��<A�*l��$-�$�!�Td�w#p�Uy��3SĆ�,lZ9�PZ&ƒE�+"9p:�y�9*�NTf��YQ�ΰ�Or;���m.��^��>�0�OYo��F��o�)�j��3��,�M����*D6rJ�6IE���AH|K�=yJ� ��ڳ���E���gq�.n�ι(�Ŭt�+��)����Q����#�0��9]D��>NقrP��=5���7L��â�X�2���������o�K�B��	l>3���Ֆ4��-c����"��kLCK��a�t�di�%k�ᰠ�BD�t�'�Y� 
])�B�I��z�w� %*����s��u׈#C�EI��0&!���,(����d�L3�H|/B��`�9
���3�޿	{8�7=@0���|_D*�hK���IHO��� �Bs�d��1����b�x�J�i�ȉ�M��ؿ$�0�"�����RlH��&���՝��ܐU��5Tp}%���Kqy;ы-�s�37�is
���XA��Z�����~�Z%`�A������7J{ݬ����UݲN~�_�����JrS�8�#%�B,�_���a�����f�z��3�p��D�{�QL�>�a�Y:x;ȏ��߿�����Q�N���P[�4Utsʉx�ͻ�E�˦V4eu��>�^O�"S���8ف�h�	�.�)SJ����~�FHZ��}e[��_��U<���A�X%��H-��(���Y�����\��}Dl�A^&!
�e7{�G�ۓՕ�2ɰ>�{j��z��A��P�D�xB�a)\F�f�'DQT�QIG��7V�v�v
�T�����.��P�H�YI�X?����y���S\@2Y%���RiT���AH��b�!�'�V�����n-��0�gC��?d����y{�˼3�kO6��<����j���u������=	:F��l$��p@³��1|�\�>w��,F�E ���Jx�����g��4�jG��\}CvhJ���/0����Mж� 2���y�Tҟ3���l2��l$���d�d6=g*�@����ǽ��DJY�{*[o�ϓ�g��_���H��D�`"zp1��\-&��t2W~�(T{H�yR�DOپف�E=!,�
rJԦ�tp�(����}:�h�hm�艡T&x�	���E�/���%G����������,*�-�)�Z�K;���4���/�N.<�*���<�=�tnў"��m"�Ho���V&�yeґ�焖6V�na�<g�TQ��т��*�ۦ~;��N�K����獔k�/?������4_�6W�P����&/����kl~�_��&����q-����
�C�$��{��"b�}�c�]�[`8�'�X�ĸP�Jw䑼:��V9���gŰ�?��r�φ�ɦ�Ik	��]�	�r�O�#��    8���Y>�92l�#�k��8�їt�.�G�B�[�����*�@�#>�����A?�%���vS�#]�ӏ=�(��i���M���ΐ����)ݪ�s�<�5�r���Pn���M�~ia�*v�'��{o�9��~��(��,�Hf"W��tuu�Lkj��ͨ�<���("�, �"�c˶,˶,�-k�F�>��a������ŋ �@l� ��d5{��d&q��q�ƽ�����w����M�Ct���~ l�6nld,&�e�s����SP����މ��*z����p<�G�Sq5����	�T�N-!�Mc� ��wq���t�M��ȷ��تI:�U��&-��~�k�����뱙��U��H�_, T��y�}���
㩽��:��Q6^�L��,��G��لo����?��&�O���<pJ�s$�V��!4�*�پg[�]4�acw����UZS6;�f)�h�4��Ε��h���m�r[�ղ_����pL�|�|I���0E�O���
N;.;ok;��hm
��(C����`�m>Sk1C���z"�l���n"�����2]ġ���-@2�#�[Q%7[�M	�4|�0����t�*�A6Kg�$�)�GMJ�Eim��H%;�mÞX�� j�[#QK/{ZG=�EJ8�\��y�#�;	��*U:��R�W@*1E�B��X�΄^+wȲm�|/.��@뢍>y��Ǐ�:>l;��O
��(��pç�<���`�ùM睬�P`M���a���I�z����t
����d�/4��9����:�f���2��Џ��%�mp� V^t1�h�QA5����5w�r����f{\�A��mq,J*P�i9G��<�>�Œhg&mp����фX
U�MX��^�+��+��y�1&�\�'�en����8�돡8�K�x�)i����;��ڧ[˜�!�}����2G1)�|�ܤ�r�T�����]�8�p%�6�8"�*�'�Is�d�ᠬ��59��K���o�Ï�~�8��Ne�x6��u���I F�ǥ2\y�E�����33Q`*�����x�ݸ����i�pV!52(��I�(?]aS�%�
�J«��Qd�����q���e>��-6 ����3������F1�/%��1oU=�!D9�8�ī�ZUd���ŝ���0�o��Rś��;&�V|1Dv�C���VJ�w��E����
(��M��_J]-g�X��US�84�F��8��e�gb�C�:G��*��=Ap �Œ�Փ:S:^��N�ah��G�S��!�f�%Lv�,��[v+o�Kδl��j�Ƙ�͘[fh���K���Sa�'���EE$0��0�@�-��"��� 6a���b-2�%�%�,�pݮp��
���b�%�~�����j!��Հ1%*|ї�ŷ�5�f���
[=� �6���Qڇ �gF�qF��U9:��N��)+�䣋�(��*� <Ke�Pì�0O�| �xyE�7�֏{T�.D��H�W9��x/4�X���*.׳�,yP�bB� �oe6Э��q!OW��#:����8���o�H�䰛�u	�}�;;׍cD�v%���G#�lO�PO�h��*���e;�*�<J验���hQ�>�����R~R]������H��*?�<D��q�:�u��k6q�\j�x�Y�T��ֳ�����z�?O���.�fW��:�&��̱3|�_���FS������_\���xH3��* �#����D�`�_�-�y���q�;�A_u\�˃��U8O�h��/S�P��n7^��wC�w^i������G}~ꅯR]��R�X�*4_m�Z%�[^�h�*�wҙT��A���{M#�
u�R��Ѽ�P�N�p�S^�\G�|�Qa��\�!K�2�7䙮�QaA�W|�Y��U*v��}%��(g-�������_}
U_!ʕC��GW9,�ߢ�r�f�q��|R����|bL_'T��*��'T\Y��d��$h����A`o��̭����R��{Έ8���wQ^�12����;%/m��p��8�˹�HXrh�� #�r��X��S�Ir3���!�}�,ӋQ���[��@�:��@�_�Gm8=:��Ɛюe�1���Κ�&F�d4�r�=�A͎%��k2*Sak��h/+��F±pc�s,�g�toK�̙(��,k6���6�܀V�4��%ڍ]����gfQ�5�sܥ$���a4��p�E?sO��E�L=/(�������B�;�I�^�?ћf�f��h�ۆ�(�5WZ&W8O>xg�ĳ���/�ſ)�['���ċ��bS���vA������vl
�F�#�g�k�}PfIջ|K�z��.��ǥ�_���Ǳ��5��3�B!��& ɩg} \��5��[m6'��`p���j$�e�/�S����%�}�+<�덤20��.x�J�#�b�\��k���vJ��X�w����3f��ShS=�]��2�C�����g?�_r�H@��쳮4���O����T]D'��%�4s����i������,~��Ξ�ZtH_.wajE��_y�Ot'gk���J�R�����pT �3G�迾��
��)����_������ut�pZZ0@�&F�1��nR-�
ub��v�����2�5׫��V����2-}����<<y_Il�z�.��Ʌ��?<�Re�cQ��B��q�P�����f�\���S]�:_��%�{)���g��'�]���ReP�Z�S%���m�Ftְprvxܦ�+�'��:[���̕��V�����V��{����ܱSp@-��PP��׃��ͫ(x���l�Wa����+�ޕ�eU��U�-UcJ<!����w��'t�^N�,B��A!Y�Wn��hjA�n	�,#�[���_i����T����2ي���I���)��������
�e�]��]&��&;��)�t�B��f����@x}d��M�h�d\$�| �#䶼�znN�l䁂o����7uԤ��B0�Ҕ6~�:�8.�K��e�A�)�̬ڝ�Sqsr^����%�t^�!�;���E��4Ƒ(ߌ��!ňtցH�"��d:,3G�8뷩N���|��z�s��$���C0�ö�^��":���`[8K!��.��]]6�^Ԅ�<�E+�h�`E����5�*i�\5�t]��)EL����o�5�]C"����Yz]��SJFp�8�%��~����d!��Jn�Tb�R򶳙�wQ{���u��ST�/ _~���w�U0q<�]�ǭ���M? V���>A�]��Bui�8��/?�/= �L'.o��h���M�BAVΧ 4����c�<lv���8)I�1��ot�7ĉX�W-�ܸ��1�� ~3ߠ�:������G��h2�+pF�a�Nf.���l�qvl,���.^.�ȩ0�:\�ٜ�t����{4������_�C�v���!Z �*�*I{�AC��)���Е
�l�,h��kW��l,�]N�%mVT��� ί�9E�GxVm&eY���"cc`ci�48���^�yH�ц W���:�#Iۉ�ɔ�k�W!H��@%eO��E�e�G�e�@�e�fR^y:婨9��jN�Xs:�כY�֨�W�������	qXB��8�C AvcO�x+W#�ȣ����+�j��f<3oɇ�-��]j�A���N�e�PjJ��:���s"Z�Q�&Rk5��*9?U_�L��s˛�4�����|<�c}�"9���^����^h��dG���B�YM��?���C�ty��i.B�D�Qծ��a-����tz�{^�Aw7Ao��T�;�{��J�[2�%?7�)m��b�ke���=���J��d�r��$�C~����A �)]�\j��aV�C�g �����(~���Q��GѺ�5�9|vfмm�+dn��Gw�ɿR!�ٓ�J��J���I8�N�����s��]0���83�!J	��P�s�(�˼?��GxՄVq�(,3и�
y��tfy�P�P���f�����*�����L�!8[��W:��W� �r���1QRkLC����vHe��^4(�$�    gۊh[Ę��!���4�җ��gvJ�R�gu+��2�6��˧C9
�}�P���j;АJ{(�VQ�TA�4��7�̕�@��5w��7(,*R�Wۻ[�m���q_i E ����d�*�T0�McDʃnē�tE��J�� 󲷵�%h� �t���[w���D�Z�>܀���}I%8��E�ym_�70%�0E��Z�1�nd�oej��Լ��aC#���75�m�dc��E���Ɔ�c(�̈�34��~g����8���3�/ѕQh�⁩�O
V��z����L��c����U���m�,m59	�I�Rʝ &X����S�զh�Na��˼�R�I�^ ���r�x��*�!p�)��%4�ZCi8���Qf�y"�]�kA�5	��[�������"����(�պ؋㯅R`O,]�N'������ �Ҥt����`����>'A�P2���g�[��4�.	�$��`'$��%�H�&N���,ת*��>ݟ������<D�g�M�3��(��e��gJpӦv�YS�k>0f
6� p�k�I<�)k��Bn�^��:�K*,!��=(5ex��dh��q���FC$�fY�͑�n�E�����0�tA8 :�����Η&Q4;l6߼y������?o�o��/%O��4.��o�_܊��b��=��郶��R�����p�,���ξ���{����td����<{�|����M\��|���ho��s 
xL|�p�8AE�x��O�;�h6��A�r�x������BG�x�-��a��C8�ԍ����
m�ɩv�d�������5��׸������o��v������2펿2��������G�������?y�ɷ>}���o��w�����x���}���Bi���yu�N=�:�����˷������a&%�/' ��=���/^���/_��կ^��կ_���o^��귮~��w�~����~�����ꏮ���O����Ϯ~x��Wq��Wu��Ws�������?Y���?[���/~f�/?������׋�[����/����-���?,���?-���,���-���,���-����g�_Z���W����ů/~c�,~k�ۋ�Y���������.�h�ǋ?Y����?\���/����_/�f��37@gȲ�O�Ċ�y8�����^n�;�� �m��_du_z`� K�;��{���|���å�;['�䜷�%L����� m.�=r�C# �����;H�s�݁��7� ö<cb�H?h����k�r���}��0�l-��h?~���^gB��#g@��ؚ!�����F�պ�lu�fbο؇/��{����I��P k��uZ�v��tZ�i��f�3V/��mܹ�+h�9xY��
�'8��XC4��1t�+~β젝�	Q@�2sv�9z�%��=�5���+���ׅ�N�QL�	pG�_=�ހ!"�7������2t�җ=�悔�m	ـYB�����<�ј��y�`�.�j�d�5����~�����b�A�d(�b�ՠ*�=���~j.`m�Mme���{Ɩ�ޞ�E|9E_&�Av�H�E�,��	g���
�}<���ɕp�6p�h�4I����E	
�G0c�~D�%���M�s4ܓ�z���ǵ��4�G
{n(
�"��-9�u[�9��x�Љ��l�3�y����fЉ�0�ћ��|�@Q�]4��r�:�(��߄�ϙl��,5�"�~;y��4��[Q�=dL���癑��؊��;��8�J����1%b��(���@�I�z4� ��l��F��!3&H�`�ñ����(�k�9��l�3�� ́��C�=�q���X�q+�����[m���~tя���΀�%kw��ŪU��W��3#�iͥq�ZH�w@�vpᄑ�|�֘�<~d&��z��a�w5��0O��k�B'8�=����V�
���D.��0�0��M(������l�zZɗ��{<ND3�I\�A��9�0�fGe�x`�̝{�`�<xH�hu�PJ�W�E�Y�.���r:f��Za��l�2wg�<4�S�E�_9i�H�w����)�J	y�&@ZB�I8�'hqx��g���0} �IaoCu7���
r�#+�li�/�7pς�@���X��`��Ъ�,�ij�
Em���d����dh�U��A�!���4�{�:8l�c�Bf���O�!�>ĳ�÷�P��(�r/���%�V�K\��qn�A��>C�������|�S�h�I;H$�����a�3}'6�����p�l$�[
���xwf��[��%;T{i�����H�@���|�38��4�3 ��Oփ���i6)Q��4Ц�A&����m`!�fڡg�B�9���:7逯�$u�d{q��U�`��C��{��6t�yuk�#��� @K=�OE1��ug�#87�E~и��ò��h`갔sb�=�����i�H)���Pv
ا͚.��(� GEۮ��a\�<����/{��v����EcP�<"ɷD��|�(��SOGh0�D��DMB6MG�o��� �!hH�e���C��)�o
�E��*����w~��``A�	�i1�"1��f�Ǐ5_BTz�P�%@R��=�Ds�15���O��I����M2��v��_5[|��3�j�rX|�?�
�6����<�u�6%�V4��f�_�܏��>���q
�)����g��g�#�Nn$��AT[^F���N��KP�@f��Q��c�=~V8��3@Pǟ�)25��VK^N^�x*�@2�􂂔�r�)v�h���6�h��	E[�	�hM��~ٶ��*�Q��éaYEu�(okL�UF8²+m�Q���J���Y�2�!���Kj֨�,ls~Ҡ�sd���Q�wm���#���,��A7��h}N��E��Ҳ��JE�ۖ�Fzi���;{{(r���Q�e�&��r�t.5
���\���ᖄ�X�Qp�PU!_*7U�q�<$m�X�Y�)[n�����sa���h�u}�����m�B�Lj�^m�^m�R���i�ƨO��T���Ҿ/P0�W���x�v>(�ù��N��JH���ɘ�b�o�(+�@��+���,�0۰��3w�ac7�ӃV�D���&צЍ�wПwG���oPbw蜺𿇇jo�%�5��sO��I�EK�}��5�?¤t��X��X��9�k�h%��ˏtA�ܘe�2b�ZL/�D$PF�����e.|�Dy��R['���q�E#���jGod��N��CnKn�!�:�ƞd��.�B��~0�F�=�2���ަ��� 凬��>��[_0����9S\_(�u�,�t-5�R�:,��P�,M�k��B���� gՁP}�cS!��6�#w-��6/E����	������.��k��kd]���)�y`Sɭd��e���M&�.��4��M���QϨ��b��7O��i���ǂ&����yE^+���u5gZ�+>��9���?��F�:�6�%��4{���Hgh��q]ÙZc~�.Y�����?G��e^Gyk�$ �:S��qn{|�D�^菢7V v!���8t,�aP��_ّ��⦹qMD^[�������v�;��`��9��8v�S�zʣ{N�٢+�C9ܬ�\m2���%qF��U�|u!�( ���7��b�S�,Sn��?a+.�2~��=~-��"3BF.Z���Ү�:�� ��p�s�"��Ԛ噓1H�D�� +@l����V���0�UAB�}�+������$T��m�m��d�-=�B�+��]��]���̣:�*�B��$FqnOyn�	gt��~�<=���7Q��o��N�Љ����~���W�ச�v��L���݅��.q'60ˎ�ڬ�LkI��A:U������j`��a���s��J���u_�\s�:$��/mן�>�
`��2�����:.��	�R:�[vQ����*]��3y�Uj���gYy�L�A�EW    �zr(<u(�yp.Q�.��̓����FF��W �L�Y�dv:Ņ9P�i�Vg��U*Q����c�-?���FP�ChhW�F��2{��>���j��\w��Yp���G+�7o4 ��$$B>����W�[�X5a�^R���)���V=;�{�Sy#����9��m���ʶ��C�=�X ���CC�-|�^|>��a�@ѐڶ���-�5�a����	�]��c��PV��dU)^�K��S4��a�bq4.�{�ӷ�O���@'͚� ��x�=	��"���s��8��L;�O�
���+A�}e��*��T)G�����X�NGǮ�0��z�ܩ5B����͚��m�5y
W�� ��Qd�s�����v�:"���\�� ����:�[}1��sP[PM�J�<c�\���@�������ǟi:���^G��zm�zR�k�30��ږ ulU�6U����5�Ug��sש���Tg��������Yd�� LT�8\�Uu�3��eKVU(��PL��w�U���3��g>���A�:} &�
B�@�*cuPh.uC�B����U���zӫ��"��Ǻ����1�"�<���՗0� 8U��̩-D���A�C����M��n�����i��wZ�nN=HVǡt��z(�����	�����Jg�C�C}�Y�����6�q���A=euA�����Z��`V�*��M;�C۟#t��6�Y$ �^A�k��`Xo�"P&p ,�tRըE�ʦ�ԭ��5��6�֐͹2�wyŤNԓA#��.���8��O�;Hz��6 �Z/4���!�.@P���Y-��\�S��fn����-��SX�uX�Wc�O��ޓ�.+���ER��e�׻�uz~q�vs��r�y�Gԡ�[�ʢD����L������w%�J����G~���ns��m|��۠��w�	�?���,����&�!E"h�sw
b���HMW]�!�|Z�P��ݗ�JPv޻��;��1��2߯@]�~�:�������Jh������\�c�,W����ҌB���3*�E�Zݾ@���0��Zqü���a�*2),����ihxEh ��kh��x�A�?D=�%ag^W�]���)Y��&�Src��~f9.S,/��|sS�tT6��gJ�
��8d�3�mSłn|�q��B�Б�Dn?�9%���z �#HN� %F�(R�t���F�����z����jn�:���B��-gwl�>N��!�������V�͍��ew7��٭8��.3s��81o3��*�[eEf8�̄��o"�7��$u����,.��;��vN�����1���-�vn9(vȕIz��5g�Op���A�mV��#��L��T��k�7s]�*�H��2lM���.ǘ]�2����e�7L����z�8\E���s8<�J��N���H��f�Y�8e��d����O���W�j�'An"}*��^[�N\)�<n�j\�Q1�]qk���I�qB����U~Tڬ�#�kȰl�Q���®��е��.�k��Q���{��a��/9��>�I�jrT8�p��g�ݘ�!O��'�[��L���P(�?r�9>��x;x�1C���1[��(�6eF�K�g_rX�ݷ��`T~(*�5Y@��M�S)7���,9*�g����Ytй�����K���x��!ȐC����8G��3�|:4n�ν���ֲ��׹Y�^��eC��	6P��2��p�� ��$bӹ��������l�	'�M�B=�)2��qQ'�v��q#ٝV���!Q.��+i�}׻�yd��܅��T�c�l�*�zÉ%�U�<���}\$t�0�+�~s瞇`(����6e��!/�{m���!�!na�a$NЖ�}8u���@�L]���=�|��R�,���I[;5�xJ)X +TE�ԂNi���r<8K����_g�[t��nE~��1bG]�)Q^��Y�l	8�cE\Ռ�rp���������%���!�+�玔����{Y'��֠i��1�X�/����j����f;M��o��Y�S�B� ��"��&��`��8NuPO��⿠�
�E���B���:T� .�mQ-$��nm�M������ �,���z�Tu��g�B��S��q�q��9�K��ܨ�ډ��{��e�L=����N�z����XS�rM�"\�?�x����{ǜ���
�y�q����r\tg��`�~Y�S%�m4�#QIG�����%�w��L�3$t�K��#��T�)rƱ�z)r9��2[�Q�����P �:�Up9�-X-�%Y�������^�Zj�Q�{T��y����Q̘[����з(� �"�%����\����޷9F�J�P~��e��g���]`��gK�f��g�(��]`���f��^��]7[O�E�E��(oQD'�����^����9;Z7��1Ҵ�����2���˶A5y߱<-��AC�@3@��pߊa�k9`
 �J6�ŐK��u�@�m����Ӗ:Q�: J۸�8{��P��pLo1U�l녛V$>��t6�@`��(.����!B�f�"2���P�w��F�M_��������}�7�@긫�F��[�x#k6L%Gp�!*ڼ`���@�� ��������
#�b�ax]Ԗ T P�'�����\iɇ�4�Vp����ܳ��@i��>t4�@Eljޯ��ນ�W��1ܤ��DC.}u��бP��� X���m�������m �gJ��6�Ѱ�v��{xt���>T�>I=� �R�1��l񤢳��s��4I��u�Y���$<¾��� �װ� ���-�ٯc�%^ɹ#�� �+9K�������5a����z�VWzZQT�K�%p+�k�n	�Jމ�`���h�� ��k����p�ڮ�V�O���[�� ����d���YɃ�Y�m
��L�l�G��c0i��^�J"�c+r�7C�B���!��s�Ab V��l}]�`)�/d}���'Ϗ����<d��W
��Ⲉ;���c{���i�S�:<j	�j��x8�7^�����FW=��Ы��>% n�d	s�M�up�c�aE�վto�Zo �JK�z�Z%G7h��-\�v$��;"�[ia��^o�f%Ça�S�Y�J{�p�^mp�]�oT ����.V��\G�@���Z�Z
�?=u<k�G�����P��F@�d�"ˎ��ƀ����%�F��02���覉�`%�v�`�?� �$��!�����7�3\���kd�y���p^Q�q��kp%p+m����J�V�z�A	�J;ʤæ�9�H�����Vb�ӂU�;_G�Q6�� ���`�X�/g��S�7��c�_�+��ZT�ًxd��@mP����8U�%�2�A���6�jY���=	%F���ǫ�E�
j�Ǥ�P�˽6��#it�P9<���e�-3%� ��&�����Z�����КAI7�X�@v�UN.>FU���)����|�|e�.�bBp�Tq���i�u�r���H%�:�V+h��e����Pљ��LJnI��v9��Ĥ����Bn}Z4|qU,$�"@2�@Y���j ���)4P��� �SJ�;�mA_	zʠ�^�����x8u}t���+.w#�(OiP�r@�3`;��Ź�]�YW.��؎<���x�εѝt::��3��Sǥ�x{�GM4j]�y��a��U=����Ƙ�`o�^�k`cX��N{F���ɻhB'��X�!Ó����Ŋ7vy�9n��������I�A�ϓ|�N�43�5��������^���K$M`9��J��9u������܊#>R�Q�Sh暳���]+~m߭1zץIw!�����4���q4�7�|!�6�UD#J-�|�#��؟ �%�[����:{M�OKM��&" #���-�7���l6l�� E�API��=�Z    7� ;���W����E�#�Ob�����[-�-�duG��fn�-{o,{���]���C+|���b�:'7CY�{�-�X�L�uk�7�����|�kbƿ����{���G���~o��߉����m���y����"~'`�cv�w���=b�[�x�G��'�����������Ļ�ĻLh�V6DX�_�7����CR� ��8�+�O�AɈig�0OI��	�PNB�S�^� �`�v�.��4����Q3O����V�S@nU��u��i�9�5ԏ��,+��{:_2jyb+��2Ed	� ����e�2#-��#o�S�|���|�������x��CE�/s��]@'�;f��O���%���#��B�)Q���>��|��n��M�l�Y���|�w-�"6y�B+D3J�,v)���!�U-9�����_E���S�ʢ�d��)Z*(D&��l�^.ץP$��^�@����g����/�g}���<��T�ק�V��������8 ��LP���KS�9d��$�1�������@m[>�{v4��]c�]Y��I�;�,�P�Q-�rh���n�X��c�S��"�
	�(D7X������J ��3�:��D�A^��Z`|����
M8�{��"J���u��U��$�R�2Ծ�	�&���L���`�;��<n3|F���5�g�t?ނ�~��2f���;Z�l�W�|�;"?[D��M��9�0b�&[)�J�x�HLn0b���&�'`�BWo��w(����'"|I�U5�*��	�d�h�H̹�P�)��]J3��v�0tFЀ��V�Ƈkۜ��e`���#8�#�C'�̸|d�W��l�@2'��&?�Ə!p����� $n��XR�c���r�zu�S�`��3	�T����Gw�H�vn�IG�*3���8����s��3�K�6���	ĩxj��y�p��7Δ:�oU����|e��X<簸f�\le����\���wGd�/?�w>�
�C�f���e�%S%�� N��l�s�
vWbu7�n�D�w��t�9� 4��c��$��y�9�>�F~k�1ω(��,(�+S̵��p��V:Lq�Ke!�3���9�:�]�&����]��u+\������ʔ~���~�/"A%i��i���/:RN����m\	�9X�w:�<�����j�.�7��?��;ڂt�p�zhE�8������u�	D�A5�G0�$��=?8�l�+��E��2D'�
�xt}@��gOX�Q#�[F`��K�q�	�it��c�����9G�v;0h�gwQ�쎝Y���{!\�O�O� ��g�\��K�J���w� ^$�љ;��Pe��v����cIFE H *J���� h݇Og7�C�Zڒ'>���
��(��������o�h�"�9�%��tP������0 a�;�ὅ~~hE@��������}�����3�5j�ۼ5ݷ�;�hxmw"��n<�Oٽ@�%�� �D�|+�-X�e�9\Yr�uAL]ZD�}���u�W���׿��^e�!���{�1fJ���ߩ*���d�w���\��۵����Z�����)�v�{���5,��c������۷vr�L��X}�i�I5�s�5�{�"�T����"����~����_�dM|J_�3��A�;{���TF*}[�[O��@��@������ 9S���\t����֏�H,�Ԅ��P��"�:r�&~��(���2kC8(�Y�-�P��=��6�d���D��ڠ?h}!���壒����S�+x
�꫔8�������~f�(����o�ٿ=!�'�=!_-��tر'u���-U7c1oI�=�݄��(w]G�7ܾ5:������ވӮ�A��H�Rхo~]��"�%�q<�x z����QYZ8�GM��@���+��N��Awre���tx�]�ʛ��:�J~���l��ͪpR̽�E�1VgC��ބn��#�xM\=G^	���82�N��`鮆#�c;�8������nUg�#z���"�
e�w��z�����%����ߞ[3��3&u��X���-sE��k�%M?C\4Tq�+�.�HX�ͳV`'r�Ǝ�7��xt1��n�ރ-�R�.+,�s8�|z
��t�]��&|jA�.J�F���``����^O�C�хC�C���q�����@0X"�4�㏹�����)�J�dٟ(}��|c���x#�u��'/l��&�<�ZB$�eU��[XڙOh��}��|g ����|�,Q���e�3X�Ll�O&��z���b+J�u��d~��(�_M ���y�}����񨽂ߢ'=�[���N�����G��لo����?��y�¯�f�c82��o�E�O�ͧ�!-�C�>UG��l+�� 8l�.����s-���ü��%Z ���sA�e���<_;v��W�!�p|�c��[�K�FX�����$0�
��˝H�������� ��lHTg���pS���� fo>S��M�8E�5�r�
�F�1��f�k������ؾL)���i��%��BW%=B]i���]@�A������߇���*��y%E/T�Z����ly��DѷC���Z�z�Wl&WM��t^�����"�(S㶶ߪ��ުl*��ɝ��aO,o���P?������F����ܭ^��*��Z}3m<�f���|�3d� �
$�8�E8)P:t��F�y���+!���I"��?�������K�1%������*��ՙ;���%��=�m��J)[�^+w�Ӳm�|/��l�.��I�S�>~d�G����+򥰨�	��m�)5�}o�)��pn�錫!X���é|��d��{ԥ��P���/cw��Ov�{���� ѵg��|Y��
�'�e��&�|�AE+�c����.�2�a՜�qr�p������g�<�ٻ	��c�0�Ͱ�L(�S�l8N�$�ZyF% �Lt��h��QA.���]s�O7d�${<�z\���I��m���J�Z3gL���hK;J�F����C,k��]��R0ኺX�����>?8���LM��u�0̭1x:z �p�1�<*��A0%��~��^�tkye�0@���!&�o�d���&���O�V�#�|���{Ҏ$G�X��"%��̛$1�F#�ur7.40�폎��41b�,��iUńg=.\�;;�`T�Εǎgt�P^N�s����,-2��»q��]�����j�+��ɹR~���%��7���a%����_	X0�ny)�w���&��Ar�1����X#ƕ�!�a̉��J~Wʅő=?�C+BM��3��zI�*�,�����o#�ni�����Jij6�����WsG�!�PW"�6��\�u!��SqV��%�]5�^xb�]����]��}&�;��r�}��^�A�K�Y|Bg�&��H*���M K�k�����7^H��Tר����|iEJ�ց1�K�1����Ur�A�����Kz_��H$��!��A��,LKl�*%+�Pd_K�K��Y(��.P����U�.+׹p@̛�::cJ�:�+_�Ki:�̫���XD�}t'9t�3���<��(R�<�Zvp�NR�]DD}�U��YJ�zq��xBd�h�ˋ���J�x�2p�xE�h�ʡ�㐘�	��r��#J�Qw{Y�N���N_9A�<~��N��Ч���z}ZE�T.F��%3�%�|#G�%��<K��+^�]?VQV��D����4�f��d�y��w�K9w����n�ʯ<Jΐ�_HDe��.�E��Y�yB�_�u�Q-Vm�����4&�����l��?������M�d1)���v'`z�>OV��.�dף��2�&��̱3��_���&f����Ņ�}n���4�W*��9B��_F�&�����<���K�n�mણ��^B���z�u��{Ѿ@�,EW��f7^��Z�wC�w^i6��z��e�	��I��[K�g�Ph�]�<�YJׂ�E�(���L��8��^�H�B�KiދH(h� |�$�&�у    ?*#Fb&�l���ʤSDP��0o���-��vA2N\(�Y�eS*ȉw)%��܅na\NYܕ�B��U�B5V��dK�Vޣ涐�<��#Z9	�wp�;����1�뮰%�3'tVY~��?��?�.Y��8w�[�"��P*s��@��p�Ao�!B�\7E��#n&�6K����˹��N��r�&�#���m��X��SI��E���.AHX�j���=�lŁT 1^�Q�G+8̀xw���?do�E"y�@!E�����1	�.��
ԅ�}[�>�d�������ͭ��1��9��3�]Qn�O�Kl�ʚ��V�lCn(YA�VĒ�������3s&���9�R2F�0���3����S�g�0S�J��,�_m�P�p½�!ӌ�L� �w�p� E���m����l�x�����E�h�#E�$8��xq�2Qll���f��l��.{�%����H����̪���w�4�:�?'���KamB��0LK'P�f'I���sM���Bs����l���-C���V���As��I��fȲx��$ܦ�	��+��l�&"���=C�*���-W$�jF2�������k֎����v7{�@g7y
m?G���oP�m�@'��Tz��%w��丳 �`�:���ߍ�uY��C�>r���)������n>=}��g��5�e�ƧVdO��������gX�͙F���'$��uρ�c�Ӗ�ZA[�����a:�E�tN�������+�J/P}�������K[��*-\&d*b�PE�]���u�uE=������;��<�h烊���L��k��COv-H�`H(�F�n�����S^s_ͅ�J��=����e�}�� �]�,��R�ԕ��>.�$���ז�<g_��4M�\�GU�Xх��	�G9�ɲj�����Y�^]D�"*]Y�/�F1*�Hk�����0vG'"���l%M���j��έ��@+Pe�C����@=G��(u�^�F;��+'��D�����^ݾh�-!�"OyS���7Cy7��ur�S��r\�M��3̈<?FY��w��m{>�U\�!.W跂�d֔n�6�8�K�eY�)n�:yj_�*����;��u�Q�SX�SԲFCE�G� �g�Šw�zGtEv1����H�]�̓#�C�FG�~y	�~9��6[�'��l%L���s�KJN��5%���[�<?�[�h�<��@0� ��a%�4����T��Q]�������8�$'IXW[��,b�W�<R�f�WH�?�dD���k�����L5��0���:mg�7�v['����g��_� ��J����	�}0q<�]�ǭ���M? V���>A�]��B�_�8��/?�/= �L'U)�(JNV{2�p�0�OAh���ǆy�>�u�pjsc>3"��.8n��i|>.�e�q�acf�A�f�U�z�1ue�.��8d���a��-H�ً�r�j�y~t�!D佘G.�Ksό�7z�F9�L�dx�&���b	'�x0����ӫD�j��P�3tl���\(�d��_B;�{���YU8b[Ub%�U;��rfԨ���<�6#�,@�G��0��3J�
rlmS�@�S�Ėmd59z]�|���ɵ��4;]{���&��]���#�EM�Iף�ڌ�+AG�5��j��4��z��宮i�Z6�%!�R����6��ҍ}��\��#���,�A2,UT8�:꬇�����p��p���ٮΎ�N8;5�I	j\�ט{ND1�`DjU��Q�@�ߥ�
��ks.�2n�n��JF҄�!�b�Z{��^g ����gG�TJ6�N~��2[�x��}L>Å���e�;k�vX��q�6�^r�wρ���� Ž��	�X����U��Dx؝�hQY���C��f|��{��.}�����,��+�����ƞ4h�b���0�A/�)�)t a��&Q��H�L.h���w�`�ʛ����j��N���O��t��Q/�ߟNc�['�|:��K�I��\��`�!��qf�������P�s�(�˼?��Gx���Ŏ; �e7P;۟�,��Jp�Ӽ���(�P���C2������uv����Xg���Q
&��52��'?�`y#��Yۊh{Ø��q,�@ZP��إ/z��@˙��/�Vo�p�bX��ζ?,�D���������˜������r
����r�z殹s���AaUp���5��h�GD'�!8wT�I��O�(��f4����O���^�~������^��2#�|>�4b���1k���ه���V�/)�$�.�w������Ğ�h�P뾡֝C��C�����5� �{�.B����$�(s��`'!�K�vl�[�h�^�=�v³��[�tSK�u�!�u"��@:#�����)nԲ �9E�����ŉ��aDڜr�Y-�e��i�M�'�p�X�)�jS�U����e�;`)�$H/�P����T������x�:s��?{�������[�י���ի'��ׄb�wm�
��q������
�$.�np�
K�gK�v䕗8bt:w��^�bo3��{���hd�w�T'�BO�I���]�lu�w<	�����=�:�� Hb�H�]�d���)o#�d|��wUQ������O3�@ �k�͞������!cM�g���)8H���H'�ħU���uE�9�"
e�9%ey��d�T�l�`7�j~n4DRm������v^�ɡoE3���}�r[��֘��1(��C���C04�v��6ۭ���.��ڶ������??4�A�J>=Eu;-o�k��ޗuۄo��om%��\�(W��rZ���6#n����!���u[�����Q���ב���Cz�|�^CD��g���H��~M�2�����N�c���io����.��D�@�\����f���b���+D�J����)CU��A
�����OX:�;LNu��`������!�X�ᄆ?�P8@�����h���������-����d�؋p�q�Q�JM����;�I�!Ǥ�gwG��qPk�1t�!�0�w��h�6�n�I��>��}��H~�'ԍm�ng��R���X�uSʏ�-='c|e�g��I~E��JCY&�W.J2@�#B�A]� � �|���&��������I���7oޤ�n���O��f�:�/�ǿt����k��z*�[�~k+^�!��[�=�w��54[~�8_��C��l�7�}?7�{��5���Q�9:B����54}�=�[�9�0PB_x��e��'�q����n�-��������?��X�5>�����-(�h��������~�:����}���}�0<�@;4PY�)2I�  #L�zϸ��myF �N�Ƥ��_6}h۠V9�K������r��d�����O>3�<X��	��d�x!x�A��6�����h����.�{p�R��1�/�d�d�]\�Vs���E��/$>��Xg��ãB_��ud�q\�8�<�����?���o<��q��w�������<��{��0����9P~8.D�Eti����G�>�|��?���w�?~��gό�O?5�������>{t�S��>��鳏��@ Aʉ���)\D��^B����{��|j�>a��g�P�9^����K�����gj�˅���s����( � � ����x�@$�F|� ��pc@��/G>&��p���1��(|���1��!$
��n��L+�7 ��!&�e$��S�?3&V��kw{�����G��Lc�2>��p��}7<�����±|���7.�g/<D��m8|�������������~������w�����������?����S?DSFH4	�`ыR���1A@�?GJa��
l���x	\�QB��!ɧ�)'.�(z=P?��[�$&{��3����W��RI�b_3e����$/��l�^.W�p�@e#5ɡ��XJ�	p�&�|[�>�C��k�F�7��@�    ��Xb�K���xa?6�[4�@���#;#�Y�9�H��dtv��&�lR	���U���+5��և�]J�顎�B�>U�'!��C�o5�&ϥB�4��_J�(�PQo�.�0�Hɜxo�8a��	�0�햞�Yݽ�;�=���h�{#�����V�IL#i��f�&X3{)�l��a<��ˈoo�C�Hm|�yg�G��+p!|�qw�?����l��N���;|]n=F��k������=��7>��o>z���'�����Ͼ����O~���˿���/>�������ڏ��I��Ο��/^���/_��կ^��կ_���o^��귮~��w�~����~�����ꏮ���O����Ϯ~x��Wq��Wu��Ws�������?Y���?[���/~f�/?������׋�[����/����-���?,���?-���,���-���,���-����g�_Z���W����ů/~c�,~k�ۋ�Y���������.�h�ǋ?Y����?\���/����_/�f����ҨA���p�M���������:� ������)��t������1]���9\��pۻuBO�{[��{��{��{��{��{��{��{��{�=*�)G���r��t�����y��tk�o��m�Gkd:q��Ġ�~}��t��t��t���g�m�^ޒ����E�u��23G�:;�:���gh��P1/x��?oB���k��Jn�1�h�΋h���XXIs�-'�}
��2���õ_D�Ӱ�ήxc���v�0tF���̒�z�i�Q�xT3�|�r
�7 uz\c�U�� �}�et�<G�p���܋����&�u/|�#h� ���w8�xA|�$JnA����ҡs۴�ӈ3?�����z=c8��	]ţ��4�V<��VI`�ioɞ�����%D�v�3������E�Z��#N$Z�tr����h'޼���Z��.�у?�-��6@��m�=r�G?�YZ���v�&q�8ͳʚ��A�0-�ā�a���<\c�#�G�B�:���tя����:�F�``F����P{Z�����ϖ�����	��~�>�/������f2���8t��:���m�3������A�G��lA[x�Bb�#��`�U�0[�*����F��5��g��3��� �90��?Q?ŁH�����r�To !	���u�2B�ifcv3��2������</
,��h(�&4T'�(i}��Ɔ�"g� :8^��C�S��'Z`��lA��e�Rq�+�C�x$�Vh$�@��`<�W�5D0��5!7�@-�k�`�S#N\y׺6R���,"� ��Ƌ�t����j�5w��@�jx֨��&=?��JJ���(O1{�H�k7֖�7'K[��!���˾KX�\8���,�[/7�>�����mP;r �ha�H7� K>��{ϕ����&ߒɈ�e�1��Z�d�:��� �^��{����`Z8���A��P��4k��lkNݭo�55�4�#���])]&;��ǃ����
/��)���Ǐ��0����6��c᫇!���[ZYz���*L��0}�w�����y���B��q>7�Z&K9l��@�p���4�-��E`�j�^���aUx�㵁L���k3N�=+;\"�J�fk�rf���Od�E-
�l��Bx��+��Krv:�)� 'JŒ����pV���oh ��C��4-�X~���Dѝ�z��8��@륁i��ЀV	;*��=̩��T�$�b�+R��P
 ����sl�z/�O�1��1�o��QN�zx�Nź�麜� �Q^T�����d���3:�+5��z����h��ᶲ���n��;�6Ѷ7��)O�V�S�^����J��W�{Pi�jo�+�]�c�T�`���59���0/��d^F�;d'��g#2����N�{U�bz�������o���>�JZ��s���/g)�z��g�TgOD���fn�Zܶ�� ��f7����7)'K�9�3ڤ��=�~=��6�ϊ�Sd��l1z��	v�z�
䌼���\~R ��3t*ӌH����	nYŚ�+?��Re�uy�Qƶv���-�c��Gg�\�X~��D"W_���¡��GS1�pH�L�NQX�]���`cv��
3��r�aQ25�k
R�e	������8 �x�n@O�3P�HE���F��4� (H�b�B_������P�1@�j֤��d+VB�$�
�U@J�W�
�83#k긗��7��[���><=�O���ώB�OG����'�0���qc��� Tv���st^����lU���RP��J�(��7�WS���@t��F��'��i���� ���Ǐ�YNDf�q�S�$���͝��hˉ�Y�%���2ydIs�Q�����Ay�-�w߫>��7�2z���)؁�ƛ�� ��O�x�5�wtK�D9�\B�j�s(`�#�� �O)���W ��2��e���k��n����r`��Y���3W����������oi_��+���Jh���^f��9���?.��������:1�:z�z"�U��㞌cH'e����(��/�Ɛ�xvI��u�$������/�8d7�\�F���὘�O|*�e��%6�Af�҈%?�9���� ��l
����E� ?�v̈�9z�/�i9f���K.D�?�#�b)/;)�۱�gܚA�7�+Hօn��������y��C%�E H��'gCw��Q����K������
d,����(��]���ŀ�ۙ�������;���' ҸEǇ��]�M��,��A�d��+f�~�
}OJ, � ��P��5ҏ^'
�F��{����)RA���B�,o�K��v㥁�+򏎅�y�X�/�'�ll0��t�*�ܲJ�|�.C�2�](�,�t)\@c뵄�r"��j.d\Έ0í����	T5�����O��{��>��Ii.�y ��=��z��B�I���� ����7��+R������l�Q���UC���\NYݴ
��b*�$��e@q���k�����<�]�����9uQőC�n#2����'���C�!�U+��d��Z.�-�)Pjj"�.סx>�����H��Y���-��ki�5?���i�z*YQ�����y��:����X�~�˷p����ҽ w��:@�肮�0'��;Gg�|n-IW���r�Ʈ��}?i	"
V��]��D�6E�e�]Ȫ(]�$���%2`,8����I<��p��A_�D�!;�1M�П6���V��X�S��Y�
v����<)j y�K�T���Dw'��-���*�ِu�~�= xQ��Ϛ��8�Ћ��!&(�
�>���v&��D$��@��Ddƒ�$��qh�,�y�Q��ա��lhl��;��ŀ[�6O�0�k&'yHy|�������Ԋ)������?�����6�1���ё[��i�۪�Sy�φ��	��1�t���K 9lB�r��˅������p�C+OY����]�3\���{{��-�e'g��Gުhɲ0�,��!�	9u�������&]gqU���.[�h��m��[�"�S�vo)Y����-%E�Ԡ��<�;>�h��Ʒ�3pp�j�{G�x�C�wJ���[�4�x���D�o9x�98���&r�7����*1-�E;>h�$B�Z-���n)�D�y%�E�g9pT��#RN1�Wܾ�9����ᶸ�I���˗ŉ^���F���މ�j(�F�XbJXb���r�P���IY���.��f�.^Rm}U��s�6�2]F����Ũ%�D������<�U$��R7�T$<��+#<G�Ty%�_Ai_!AY��gnI{�8�eh��j$5q�i�<(���*'�[�C� �feּ.�TlV��9I��<7E<g���\���g�zLb��4E�d�6��Z��$3�g���Im̰��� �  3�P	M\^x�&��1��nge�6p!2C���zh�i��5��`�i�>'�y���<��v%��H��Q�i��P����夫���!�H�➴%mt^޲V5{���C_|ݧ?
�b�E�����/%%���վ��B��BQC�r�Rɻ�\iR��I����B�Kyy-fIAn��5إ�]��Kk�K�}jo����O�.�U<h��XoՁL���e��fQ�hc�\p��'ۛ�Z/?��"/��6^�=~�@�>dN����ݞ&)�I�U#�z��aUv���B�U�O�t�Q���H���*�"�{HG�&:DB��Q?fc��@M��܀��X��"`e+�X��/x��ϲ�v��Ԗ-������-N�s;�D�Sd����R�^�8�{�P�G�IAy��NrA]~^7�
:VU�T!{�<W*V�	1�%.���[ѻ�d��d�w��$����� �ۆ��K%�1A�6P��A[�5y}yz����dVS�`=����o�\E��x{�P%�,�r���+��jq�[�
�� �	�M8 9Y�����(�i�Kt^XWppK���@���^�����aS}m����v�+�*K;��Ў6�݃��59_��NRCyU�
#�&����Y��=^nˡ_�Ζ
�Bm����zh[�h<�$��Nґ�ޚ]�L�u�"Ix~@��<��\�]��NM�pjz�SӫÑ9��:2�l��@��l���ܔ������*9��MS�V1�be4�J{;Y��cɛ?�gf��3o�.��ہI��S�,}��,6S �����5p�#֔n�YV���RV��׾i����{�+o��8K�U�FG�����PQ��h����=bl\@RL<-�_F7��L����kk
�@�KoE�4��>q�?`��Ԗ��UΤ|��I��Je���<?*)��_q������;q�_���tk4E(�|8g�/
���l~�:��V��c�O<�%��'�k��3kO��?����{�<��	#?��eZzo"#����\XP2�6}\&�~�5n� �^7��q|=��3 ����lf܌�'da�=,�˷��Eq@�9 �9@�ىN
��Zb����J�vV�w����ꦴ����]�^_���%�	\|"�9�7G`�D�sJ�T(�v*�~�n^""8퇥W����sa��F2��F�Z���P���		4d~t/��qsL{��b[tb����^��o/w�]sj�UX�뀠h���[KBu�b�Z`��a����i0^\cu�N���Zu�<+�7�+P��+��ݘ9����"��+��@��Ly�W�Cd�w�%�M�;G�����:����s�P���ӓq��c�Y�#g�F�K�B]b����!U����hq����:V����Yv�{��u�z�B��6A��]h�5S�&�])������<���Cc�S�a,�HmR����7P�&R�-c
,/L�D�M_2�����;�Hh���|���c�˳
d���CR��&���iy\�%�������L�_͸�v�Q�!z��:�3M|}��]��7���-��d�E�Q�VNK`��g��rZ]\;��HՁ�eo�\�(wnEA�g��¶R�ׂ��Z�\J�F�ǨL<�)��ձXm�]*K�:lQ��+�Y�8~�D	��ړ�&�'	)W���ݕ�箺�F~��4i<lj<���'�)�:Mw�J����fX�&�]%o�ծ5�ǲ�w�8�qB`���\��\6�1����a"�ŋhy�d�I�Y5q#�Q��9{�e=K��AG�8�E���ϯ�\p˱�;+U��G��nQ��y�'�wD�n)xS)h�A�)�SpX�^�K�Z������w��3�b�7:�,C���3�m4Z�s�s��+bg��`���}A��l���g��V#;n�����`}��Gb:h�֤�F�;��/+@���G��L�`ű�A�g�$���Kz��wo�s&1�9��D:gt&AҸ�gt�à[�Ҹ�i�ݺh�v��_G�~�h�	���7����uj݆*Һ\�w�l��X��L'f2�i��W�u�6�zK~�|�蠽,��dX�n���������\@�*^����҅2@t���_�����;i      `)   I  x��V�j�0|����֕��
����a)�}iB1��lɨ�B��rd'�9�W��K�.3��p%JT�6+^�%)���'��L9^���{JIb֟��~�>�A�\}��-_$�������I��O��e�����d�qE��ՙa{��ɽ���?�d\O4��{#�fu���l����|\��Y�:����㥩O�M��ˑ�ݬ}�1ah"q	�a&��Q(�� 8���8 nw���l����{І�v#�a>��oq��gAV��B|h�;��]���A/Hɘ����d��^���o�Aiz��:1���ѡ��>4.�ɞ��̪C��F<�v|���]��v�b�pt��B�&PF�ut�A�*�%�2A"ʈE�G�x�%r�^wB�p�z�w�_z�/r��������]#�8h�D-A�ie3O�eE�i��r�dIVW�W�<4�v���B�mS�Cw�k6ge��
��`��/lt�(0�4�[�!�]���h��hژ$�P���/1%<7��\݆����US����է�!�z0_�$q��7Brea��K�����稧�'Dz�?�(�%���      f)   h  x����r�0���S�i-Y�̱�I�C��L�[/���6}�JZ��5"3��o��_�J<#aDJF~>��|���ퟰ�<j=���ד���N��b^V����䳮WM�[���C���];L�$��TiB8)���y���]�?8<��Q�n(f�r�֋�],l��e�l�C�f���eݘ�����j��ܨ�O�D�n����f]5���f��ھ��Le�#R�������8�65���e&�c��%����h��p���w����t��%h�,��#Z/����l	$)�@򽁂���%$��Ǝ��N�{���ͮn��,Dь��6���BV�i���8�)�"��F
J��)M[͠&xy��K���HO�oZ���XB���N��l!~���NHFd��g�j�k�[�����A�T35H�K�ĥ@�;�#:4b��ꪾ�뾺6��htԀ�.&���zG���8>�v2�~�Fz����fФDG=��Q_-"���x���I7&���k�/��E����F ]3�9���Q�����zS����Xۆr��\A��Y�#�tB�k0YNr�"Hܶ�ю}A�lJ���b��+�ȉ��8j�ʖi�q��(S�\O�Dl�.z��#�y��P����O��Ҷ��+�yn���Kb~�i���Iܳ�)����H"mK����W|�x�w�<:x<?����.�.�A���.��U��v��:���I3Y��μ��a4N9��-�@ħ�f��H�Ɯ��8-�#f����p�R�Q�=���lbB�R�k{:���	��K@�R��_�\��/Z�w�hxdݒ�n)����K�ҥ�]��^^�b??PJ�t�,h      p)      x������ � �      r)      x������ � �      t)      x������ � �      �(   �   x�e�1�0 g��@��������mI\9)���N� >lHpNLʹ����F���O�$v>46		L_G����UW�B��Z�7\�t۟��k-nj�1���qW�T)���0V��^��Bj�����DV��鄈_��A7      �(   �  x��U���6=�_�cs�"E�Ǎ�
t����W��H�JR���(�Y��&����3o�Hf�#�<���Q�$����11����lc����N=W�X�̇�H�;�F�ک���B��tZ��Y3����]�����3�t4��Y�jn�h��qn���4��� ͍=�ih� R+��ћ#�6��O\�H����mG����D�!�[���k2���0y34TD�	o�P�=1��"5��oP�7�E��G�"��I�ԥ!5�=��+�����o�ţ���&5���[����oO�A�;�S
dW�^"L[�l�Aj�?z������/%84o��3Do�-�y�o��������B�8O�a�Ƣ���us2i�6D�^j0W�����-����	�<�nk�Cn�f�S)�/�(��h٢�9{H��3R �M���,�Z�M��Ɵ�0���Bto:.%V��.�����e�䕅��(��r]гu��t�?���d�k�p��m�K��v=�;�lv��ܭ6�=e�^�<o�l��P�ׇ�$�Ŗ��ߜ�R�,���,U��u%��J5�\���m'OE�d��f�-�?6�ځ��1�rWƨ�l���8�\;s~4��d�a <xU	��|Z/ocAa?<>�d~��R���.�8��A@\� �
�<��x���f���M-��3�/�sgb�N��!�����W[������3::����uH��:�����D�����(]"̢�P˵�u���;�z�4�lO�G��Y�꘴�}0㲈�h�1��W���"��[���Z:�z��_�g�+D��W��{^ɮµ�@���m�y\ߦ��Ų��ǖ�h�X�����l����e���r�?0�PN      �(      x���]o�r���_��`On֞��=��x׉���m$���(�	%�P#�ί�|p$jz�-z�5l�g�_������g����xپ���E���l�4���7���g������|�xyqӾ�?����}�O�Og����v�o�4/�O˷ݏ���{�7�]5͚�C75��w7��W��h��oT�w۳���z��w� ~�ᦶq�����M'nj]��u���{՚=�մ����6]�~�i���A���6n[����'A�A�>��������կf����gw����[�Z�u�ᦦi����C���������^�n_4�pS�hS��{��ۗ7͏��_��;�7�j�.������ᦖ���-޴/���F�Mm�����7�Fn�mW7W�������q0����������z�.]��]�C����O��/����U�����mv7��~��w����M��}Y�W�o'|����{\���w���*x���%�gw�Ň�o�F�{�6��pv��߭��5�4|����}�zW�/ا�;�7��ﾥ��cs��5�w��������omU�O���e�l�����E&���F��?����ᦦ�~}�]�o_�F�M�w����ݾ�����;�s����3[��ݾk����q�⟚n~�����^��n�����|����=|�v�7���45C��o+3���~����Z�i�_� >�����n{1�ӻu��?��ߛ�>��w���z�?�� ����ߥ����`A��Cξ��ϯ̟{��ܬ���/���/?9~�{��������b���V?�}�^�z�}��\׷~�|�|	W���������=o����������q�O��z}�Y���]���1����}�������z�&�f|��C����t�su~~�xy~�N�$�M]7��m�G��ᦶѾn�?���pS�?�������O��pӡw�W�4��Ή׍{�����Jnj�^��^���U'75�v����o�Fnj}�U3�޾h����F��/~o_�F���y~{�L��#�[�4��N?��׋����F�Mݤ�����=�^�^|l_�F�Mm��Y|ܿ��7��E���T��P{_qԲ�[���,�Z���;��;jY�-��ZVG-}�ҟ���}�pZ�ph�Ѣ~�|����[�}���W�ݏ-]����Uw�c˪oy�w����o�.���?E���ǖe���o��[���	:�tw?����'�|��ݷl'¢��N���W�,��'�l�t�U�MB�0�ww?�,��'0�ww?�t}�����ݏ-���	�����e;�ݼy�����eٷ<Ag{ߠ�u-������v�;{Q�8k֫g�������e��/,;�d�\^6�7�z�_���6u��\�!�ᯀ+��CD���Y���&qu��du�����.���ngP��HV��I�A]��Y]��&q�Օx�,�sf���i�A]�Օdu%V7�3���������&qu�"�d�Pb�0�3���$[�[�i�A�%�"��"L��E(���a7_����-��agPW`uY]��M�갽sd{簽�����#��^M��5wdk�5���ak����ak>�3���ܑ����|gP���#[s���4Π[sG��[�i�|u��ٚWؚO��5��ּ��|gP��yE�����8�:l�+�5��5���ak^��y���4Π[�l�+lͧquؚWdk^ak>�3��ּ"[�
[�i�A��ٚWؚO���ؚ{�5�ؚO��5�dk�5���ak����ck>�3����-��a7_]��.��]��ngP��] �����4Π[�@��[�i�|u��H���i�A�3#��8�:l"�"Dl�qux�+��W@Ӹ��w�<�w�8�:�3�g&�3�qu8�ȑ��#�8�:<�y�%<�qu��Ld?3a?sgP�}�D�U�U�quxm��k���Ӹ���"4�����N��W�kkrmm�kk�A�3��du��p��኎�\�Q��7[]�{fI�%�n�:\�X�+K\�(����ɒ��,qvR����9W����3��^tI�ߕ8'�ꠟY�3\%�p	8�:�g��W�3\Πf�Jr���.7_���P�s@Π�^��dup�*���BΒ�8K"����ɳ�ǳ�4Π�*�<�x<�L���ڼ�LV��n�:��+������A�������a��!`�0�����Jr����;7[��11G��9pu��5��꠽pu��5��꠽p��ᨑ#G��	���J�l.sՕ0�)��û-y��û-�Aw���pu��t���p���x�#�3�g
8�:�t�x���LgP�hG�g:�puЋv���Gpu0����Z���Π�;r���h��3�����u8Z+���5�\��pM��3���\��pM��3�ó
9Z�p�V���qG�g:�p���3�g�3�qu�W!G���	8�:<�y�<�quؚ��#8�A��W���.��hgP��y"[��4Πϙ�o����A�3�U�W}8�:��#W};\�-�f��p\�"�U*Wp������BV�V7������'�<�	8�:h��du�"8�:h��du�"8�:8g6�����)���\&��^��3��^�'�^=ν
8�:�6��ܫǹWgPs@�e�:�p���̲'g�=�,8�:l��;e<�)#����������}gP��]A�w�w�8�:l��O��	Π�;�<~���3���|ƾ�g�������|ƾ�g�8�:lȵFNTG�x��'��x���3������  ��E ?A��'8�:l�O��	n�:�gٓ�,{�gY��a?�|���'�8�:<��O2��$sgP�g�I��d.���B�����V��a?�\}�q�����gI<9K�q�D��a?�|ַ�g}8�:�g�kk=��pu�"��O=�>pu�"��O=�>pu�"��O=�>pu8�N�>���T��W��
��<>+@���9�\}�q���3�ó
�����SgP�g�Y� ���'*{����,���#��z\[+���ڜ\[�qm��3�ó
�����ZgP��y [��4n�:\[�ɵ���
8�:<g�kk=��puxV!W�z\}*�����\}�q���3��s&��a��pu�#�9���ΠG��g{|氀��.���@����V��W�+���*�J*gP�] WR\I%�����@����p��᧌�S�~ʘ���G�9jp�H���qGޑ��lgP���2Y�3�A�3�tЀOpu���_�?gP��@���pu0�Ȼ��M/�갽#���n�:��xf��L7[]�k�H^#D�Fp���5B$�"^#8�:�D�!�5�����EGr]t�u�n�:���P�+ 7_�5��Z��k��|ux��k���ΠڻHΛG�7pup�+��W@Π��"y�
H��A?3��̈�L7_>�>�O���zgP�g��-����<������A\�Fr�<⼹������g�G|ƾ�3����鈟"-��5�dk�5���akN~Fv���puxΌ�93�9sgP��e�:�pu�"D�E��"L��ÕT�\Iq%��3���\�q���3���\�q���3���.��]��n7[]±�D�E'�p���Xt"Ǣ�E8�:K�Xt±h7_��&r�6�h�����L体	�pup��{'�;)���
(��K��sI�A\%��Єw�
8�:�%��Єw�
���p�X"׉%\'&���BΒ$�%puxV!gIΒ8�:<���$	gI�A�U�ub	׉	8�:��K�:�����|uxwa"�.Lxw��3�����ބ��+���#��	8�:<���%I��$Π�U9Õp�K����ys�����|u8Ҟȑ��#�Π�Lr�=�H��3��=3�{f�=s7_~bN"?1'�'�8�:<�ȑ��# 4  �Π�;r�=�H���~u����n������������t-�jS:v;s(��̡H)��<���d%�������4+Ϡ���
���ď�c#�CIv$�"�$krU�)������ǩ'\2�#�\r(P:�)U���~s(R�~���%E r(RJ�A�����#���]�Pu�ees(Rʟ{�4b%�s(RJ�@C�q�ʻ�P���S�d�ΚC�R�7��3(+ۘC�RV����H��cEJ�3R��̡�)KD��)Ug$V�.�"��)��AY��r(P���tU��|PEJ��T�2��PEJ�V&�(�AY{�r(P��1tU�k�PEJ�V&�@�C�V&�Ft"Ԥ4�ԐAY�r(P���pU{/+�C�R~�͎�͡�ޛ{"ԦT�2�|SEJ�V&K<�PR�)�"��T�m�C֎�*+�&�j�����
5�&@mJ��v��	�C�Rzd�ȶ�dP֮�
����A��L3(�D�
���5=��q��G*�8� �)U�)�����ǩ])�ѕB��P�R��/�~�z�ԦT����A�P���{յL�_��ZF�ڔ�㔵3=�"��qZ�QВ-�(� �(u��b�P�zbl��
P�R�w���S��N�I�u�(�S��ԦT�2�|����6���q�x�S�ԦT��9~�ש�^jS�U^9��Q9)�W^�� �J�\v�ԉP�R՞�v��P��oO�m/9�u���&����WmN]�	P�R՞�WmN]�	P�R՞�WmN]�	P�R՞�3PN�@	P�R՞��c�C�R�=�ԼL���Tj^F����y�����Լ� �)��ފ���Լ� 5)U�2?/S�yjR��e*~^�R�2ԤT��T��L��e�M�:N�y�J��P�Rm�V��2����&���_�=�J���M��{�~�z�ԦT��+��_�� �)U�)?/S�yjQ�U����^���ԤT�{=�����+@mJ����^���ԤT�{=�����+@MJU����^���ԤT�{=�����+@mJ�q��{���
P�R͞z���U�W����~����^�{�M��{�~�W�^jS������z���6��8���^�{�EiP�s���z�� �)��i`�u�C�R�8���rEPO��6�Z*�O���ԦT�@�y�9)�g��zFG����3:�M�V��gt��jR�m�AY�[�P��u��1T����s(R���)��APO9�6��8�r�S�M�VyX�a�P��^y�J���dj%� �)U�)�B2��ԦT�֙�9)���]	��JP�+ԦT]��+A��P�Ru�Ə�5�"@mJ�q���4��tjQլb�g��U�&�jV1�Q�*
P�RmF���bT��ԤT�*F~V1�YEjR�f#?�լ� 5)U����U�jVQ�ڔ�㔟U�jVQ�ڔj~�g��U�&���K{>{J�~oT����{���
P�R��|�7�~� �)U�)?�լ� �)U�)�Ï��/@-J�GR����R�PY)�ٔw��f��x`Pဣ=-h�+�gP7ڏp���'�#��p�.:��'�c��q�z�#ūG8Q)R=�G=ű�s4�I�XO8z��M�G��#���d�pxVa=�h�Ցg����<�J<�q��e���8V�c��Ա"��#:��NTG�?\V��Ǫg�$u�J��%���X��NR��Ap��Y��LU7�uΠn�,�Hk�NTGZp���e��'�p���ߝ'��<��	����ا8Ve�'�c���������M���\&��^��3���p���NTG�p�:Oq��sF8I��.�Y%�g��ggP�]b�؏p�:�KYi���)+�?gP��UK?�k�Џp��]ʊ�O��W�=�)���NR�z���;�sG8Qy�y<�<y�y<�quxܱ��#���=�������Du��]�~f"��	��Π�;֞�NTGw�V��<�M(����#G���	8�:�K��&#����KF���du0j$��ˎ�~�c�G=�I�X'Q?�p�d�A=��=3�,3{f�M��w����gϞ�?++�J      l)   S   x�+�,�I��% �8���WH��,�J,-��/�t�P%���Ҥ����`(�P�(+�/�L��Hv��
(
c���� >7u      n)   L   x�=�;
�0������]l4���_��Tc�u9�C;j�F=��U� ���o�ϒ��G���Eo,׉�U�@      h)   �   x�5��1�r1�m��%�����Y�f��A3�Fl+�p
�	7|	|���o&8�O��j�Ϟ!3
�j�+5gI���}�;%Tc������W�]��&�Mܺu��8/�G�|ֿƜ�q�_s �s�ɡ���Z�4���7�'S��oz&N'���S���
G)t�yz|���h�@�      �(   h   x��LI�+�L�L-��D0���Pπ�@����ؐ+;��<�(��JcWU�Y���&��H,-��/�t�P���e�sC(jJ��R�K8��4HM	��=... �H9?      �(   �  x��YmO9�l~�^�,�J��
Riګ��B��O4��]o��Ǝl�%�����6�ѝJY��<���6RT%��D�+���ݛ���9�d�}�?Y�L��?�<�"���Z-ȕ_��7G(@v$R(���n����w�	e�/g�ĺuRpJ`&��>/�Z!�Ŵݫ���89axN���oW^�qvǅj����fFM+����L��[*,�<�I��.�_X����ј�9�j�/�x*���>K�._�Joh+���p ��O3�R��8��A{��R͸@!.�㨟��k�U�J/�!�U>׷&L����R�����"��	s���q�L ��A�?��C�;=�z����!Ī?�&��_c·�	���3��aZp6`6��o/�v�;:kVQ�� ,����l��n�M~Z�R���f�տ��bس���(���NV?����'�X�����R_=�TqA�����$uVS���֣�ш0Ec
��aH�������,��"�/!^XF'�O��V+��6��'[��:ߖ�Q9ahp��&�a�+��-d��r���<Ҥ��9)��r�� ���- �6p�QW~��p�e83���L��`:Uۈl��
����HRt7�\�t�W�3����?���~���C���8I�6���*��T���s�7��IŅސ�k�uWv�M�T�� �:�x_P��J��F�QV �_T���[IE�^�&�]V��6����&���P;��
 ش ����v"�OI*�;~o�[��Q�
�K	5ȐDP"3Dw�f��D��K� <��+�1zzWH o����	�]A6����[�V�OO���6)�sS&����q��m�YG�\g�Z��ĳ��i�P!�/��e2��l�:{H��C%""C�"���e�=%|*�bFþո�R�`:�������/ĭ�Jy�	FM�j������V���#*�����x7�� ��CY86���%��Һ�i�KL��y���j��	��-o1�ş�� �E���]9�HD�f��o��SBٹ,�sޝ��ex:۩m�����rJ<@&�����/'�A;1m;d>M[����+��w��\T9��|�n>8���E���)�F��\0ge0
�=L�8�އ�ohAM�,��}��$�9P�#��$ip���1t.���b��;dd}P
�0�d�6zJ�ǵ)&�_�u����i"e�i�<І��l��'@���A���ϐ#�=���%D�nNnM�m�%�ne�.���J�4�K��=��ܻAx"��z�Y�Vm>�M~;��x���v=��Ƈ%�B��]�q��&�Bu�2��Xɗ"rZۗ��vEz�m�����w�|�n���>�W���)�a�� ��:�5F�1�]H��[�Q<�M>1�GP;3�2�V��n�8+�Q��͑+��\���?f�����{^�֌H*ѽ��j�C�e�-ң��2�.��$�!�z��>MM_��0�P�RaΈJ	���0�aQ�U\u��k�z���v�毶7��FWNޚ�:��n�TH5N+;_��cۥM��^�H�{�WL�����	�����D�}��A;�n����p�'������g(�4<��կD�*$�����`톛^m�b%f����ۛ����
      j)   r   x���DA�̖�|sy�Ǳ07�E��2olP���6a��0�q1j�z��M|:n/��O�4j���Z����1Qo�\�~3��ԋ�܆���e�v'h��|������I'      z)      x������ � �      �(   �  x��Vێ�6}��b��Z�vs��v���N'EhjlK�I�w���!e�� E��/+��s�粵X��~���4�/7}o� m�qSF�,��`�� ��1z�"��X!�.�>�8�����8Un��\��Wjn�rsd��U�������b�ڄR�Ec'Uq%&U�ʈ�ݢX�FǓ� �&M�ց�����7��~����L�{ף��K�a�&T��EP`6�:-l���:��B����6�>��Ql��&����b��a���:jĭ��c�Ƃ��9�Ҷ��sH��Y�b����;��/�4��*^�O��G�ђ�����ց���p,��g&�``�]����A�@�t&�h��j�^�,Mq�H�y��o��F�ء[�O	CL���j�!Ii&	��K�)�<NC�����H�ɤ*^����o\0n?]H����mv�ǧ���8��N$d9��t�^+P;�B�9
2���5眄��v�(���4yѴ�@�o�nH��J�*:(IQ ����#���M�b#h
;��I$�GMuQW������[e�g�v��g�#g-ޥ����͖��g��%g�2��@�]�0����W?-����5g=m`g>S��[���P��N����Răi����U}���T�!1��@ON��rQу��,��vS�:q�:��r�8';��}U��I���w�MU���m�2�'���"�h��E�k��X��3ڔ��ʾ�kS���A����/&w������ی�t�?v/����J�%��ؐYN�k��6	�!�9e1���� y%V(=���9�����7��6v���)�zP��I�gc�~-�c!xX~��;u�HL��I]���h.�@�5�6B�T��S#0��߰o�=����a����Kz1��;�a�Oi����(���~��+������I=�g�;���������ErGzkt�-�Hoi��Xix�T��k��d*���Z�K.��p��O���ϲ(��0U      b)   o   x�E��� C�u(�!MX���a��Ł�euA��Bo�*F�Ĭ\�Vn�*w���g%;��=�E���4�F��ld�M��i<>�g�:�"��ٟ�(4�,������-�      x)      x������ � �      v)      x������ � �      |)      x������ � �      k)      x��}�o�Hv�����$Uw�w=�/R���-)�Q��1e�$#�?���*��xw��O���6vl�k���n�a����L����vw��R~0�#���(^}�j�-e��P�|�g�W���3��i.��yi��<�}�_1��F��U!��ţW�ELlF���E&���֕�6�F�Um���Ubmy�捊�3��z�f�aLu&��S��y��\�7@�H�Pii�Mj�ϢX&R[�(�2˟~��_Y�j�τ����\*�ß~��_�JV*�D�Hz�|�ȏU�x^��_��RVV+��H�$̥�C���o+��� mf
����X��P.�04�\�0 ̲�$@�\\����uW��\�)"U��@<�'"�DeQ%��IsU�� >�E���v��������)��l�����E	�Bd�-��kx�Gq��:��o�[}�U�,V@����?PţT�gQE��HQZx�g�X|4�7�[uH��*^�8�z	d��E,y,�J�-t��VN��̒���/��G¬�KI�z�n2:?�Ⓚ�ɏ�Q��q+�����(�-zT,���|�2�u��\�ҋ�fq���n���a�8�.r0 �D����O������LV��u��J�x���#x�{����LH\�l�6��݋�e�Ad�d�O��U 8�;�Qo�=���H��J�@�X�R�
o\g���ox�4Ac�z�4fb�2�,L*�*
$�ô ��⋊�&P:R��a��4��Dŉ� �¿5J�D���f����3ҿ=^ՙ4�|&︌�}��C`+r~ᦟf�L�%�.�t.�ڄ�*-̰.l�3~Ċ��&*���0��~�5)bx��X>Z�]E\Xl�|sm��e⮿���dn`븬�x]�Y�D�\����׳�r�A��U�V�&����`8l�z8V<�`Ո�7Q�'^++��2A���@v:?<�J
��S���}�v$Y�n[ƺZ�V]�9��C�TZ�^J�G��E����i��RF�����Q��M0���Qmb�D8���rc�VVF�����_��˼���h��?��Bj��S�|n��D(*0�P	��$�C��I�{}4��E�a�g�s�9�,�%$8����C!v
�@�c���$_=UX���K4GL�o~/$�b�ؖa�(wQO�8tᓴL�V{mxℳR�Y!���k^� ̻�^��Q7�?���k��(%��Ā�iT\���g�E8C��+Q��y��?��ߊ��lw�d�f_nC�O2�njѳ��,��3Bǋ������瞳��{Ji��v������'o�V\�\�s�Yt���3��{Y�h�\��w��4{Ə���G��ey���L��~�U��>eώ�	?�2g��� 7H��`�'(JY�m�{�j�&w�c	��RV�QxD�:�`Џ��8�E"�#$+ceND��Y�=������\%���{ -uI��ǭ�C	�C%UPc5|������ǂ؆	>�Cf�V]�$��f7�gǍ�F,H�c\!C���u�D�!��1>�@)`��NW����vyT�\�r	����H��-ַ����=X� 5bۖ��UO�X ���ko���x�`I�1Ѕ>�w�$����wj��i�n��6��5�O���+|ӓ���^�-mW�?��b�g�� ��A����V�Ў+����� ΂�me(�L�.��L`V����]p#`E4!3����=;Ïq�{��U0+@5�M���}��`4���E���wo6��w̑(;�ڹ*���#�"ݤb�0G�´uU�$�Չ���w�Z,���#����s��E�\�F)�+�f��7{{�-������b�x�pO~:�h1��ԏjXP���m��1�[��T3�����7͠�����S��#��P�t+a���k؜@^	#
���Y?��l4IKV��T,(�粓jI���SQ���LĠ�����jD��&e
����?���*�0�	�/����(���Va��F���3A�L�*�!�w��`�`�fnaG	М��!�b�a��8V2��.򠞤�)��Y1;���/�oCog2�qb��:[�	�����TC�a������bpva��+~S	��s��H֙����f���2^,��^C�-2���J3K�������P��������6���2�6���w��2y�<�Σ-fUiH���4��/�hJ�`�kP�����)������NM��\�ne�>�؅-Փ��q�ˬL��ġO����<�oՍiC���d��H��N�}��Kd�r����{��=���\Y̛�=�� ��
��v4�� ����ﴀak l��ѐ�ю���4��E�,�n��9or7�|�	�E���d��L�kQ[x�d�=S�J�ȿ]xaǇVE� ,�Ia��;���b��?�꫽���W]��cC!E�
T|g�,�]7"u�c+�������*sO�K�s�N����e�<��f1�6v2����W�h��ƹ9A���`h<���l���
0<)��j��U��ӗ2���t��f��xȚnh1x��F�wI/R�a������ k	��C�9,�`�V^/~:9��/g{��X�h��)�\�g�PgQf3��qE?�n���?��B��@f��t^>��G��O�!�F@�YhD��狱K�fx�~��^W�iM�Bh�<-���A>,&����r�Vrq�a�� M��ôh�@ҷ������1΁u�!���j�[[#���:���g�H�x< dZ����\�6ᣅ��wL�Z���MP��0p�qsȊY�V�5�Z%��/D�E���<�F"F,HJ+����
�2��?�߃z0[;�����/3���\⮊���Ht���İ-@�Q6��7"Kw��x>��� ��`�%] t�PAVG��P��Q�j6�G �,�&�zv2�'�Kx�g�k��
���l�Y�.K���z�o/.��<D/`�ޫ��W�m�E%�Uq"�ٳ��yK��8�51�<�����N����'�r|���l�1_ȝ�Zig	��*���!O��?��h����4т':�K���5L/������C�e��Hn}� ���}�)�7�=���o�&��A�:^����k�&Q6�*�M���r;QG}�s6�,��,��X�''�Ç0g��
�1��L�'#�pS�1���C+~vy�~�@#sS3}�w.D�By�!�I������ۡ�5�J�}!
_����>i3,&�����2q�{��v�y0��Ԣ�v�����`���(���@����Ζ�N�s9ت׺#����hQ+ҙ��w��V�P���O[�)u��f�3v�LR�,�T)���`1̦q���`~3�ͬϖ�!�Ҭ�VaC*�l���4nr�]g~?(�ũa����� ������ն�CK
,�̐�5����B���i/O2D6P5
Ld5�̧�5dz�c�Y&��D�5)�Ry/r��X�����o�����q]D *��Y����-���s����8 �ˊ������iM�r��F�,���hWB*����2.��Z�q@>y�Ja\��j4��9���0ۀ
n�7��3Xܕv%��D'tb{w����#K�:�ǿm�o��wCy8D�	%�Q'k4�̧sX`E\#�`�ѐe�I)�zU�����?�e�R~/���DT�Q.m�c�����2����,%���O���o�ô�U�X����"�dP{X8:��6Ο\D��=`�?��F1����O(�g�D��Kc���0_�9:��@4>�+�fA!�cJ�%6�u����"�a d�eD�S�b:�Q�		eP��Е7ᨲƭa�;�^?�q�?e�u�������H��	��E��N$�T$(�s�7"@��P+#����� 5f��e�K}<�VU��;]�,x��"�(�+k����wV1e ��� �F�fk��-�=�raU䮒�Xr~�� ,5&�:�5�$�Uoz�4���    �f�}D��AU2ƤL�([P�6��tCai]�(Fll�=q��)�TXU��~]nC��*% �"20���-�W�y�A��2�P�����a8Co-�XI�n�> 7lc�N��|&A����VY�����a�]tYF[���;��٤n,7� �E��j���	g��v�Aj���q��JS~ji�����Т:�r90c���|����G�pkSf o����1_$U�i���l�Ń,Y��ʄ���F�����Lz��t�a}6���;U����U��P��u���Em,�9�&P��;z�������@]��%J��T�2}W�%�o�|�X�����W���=�_F�#m�(ؐ>N=wyvAI�CQ�2�'�;�VD�;� GJ�.����g������ 3f�~2�	B ����_�qE.<������{&�i���)�m_�������G��"CX8��X���G��cp۩��VH��jkX��TίC�0�\T&��:��..����?�0NDt�
�=pR3���nx�F#�,�����8���
�q���h`�We��[&�/h��B#h�
aQ\h�1����=&m���YӨ6�E�l\��[{i~�c�ӈ�;	À��c�k��;�A�TRm�&���c!N`�ei}{N��:���+���ڦ*�S30�
@u��9P�]^Mg�=
_�N1�9�Y�L�}��͈Km-�3b��ST�]>*`m��m|�ѡ��Y�+�
�e�\�ߊb�.�!��A�ۑ3��B*�oݖ�|����Y��CLt�m
ː�lO�߾�ׯE%x�O+���t�?�"��T1=�b��u���u�Ku+�U̐��m)���8pb��`:P�����b!1�Xd�0șg�LO�'T�/�]p�+˿Yǌ��g��71aAV��#h���
+�
u�H�@�j�\|.6�Z��DM�ss9z.��ea��/����seCF��kʉ#t��rH/�T��=��K�PD7V�� 	׹�'�̦^�`�@?˼X��*Y�*Ԭa��%��aҵX���+B*�}�%+l*�����*�%��*�l*E\X�����v�c�d�����}`��i��> �ͬI��B�S�5�^+�0��Pq,�͡��
Wm�O�0z��.�?���f�C;R��w#�2��u�
0�5 �T�]�>��+0��=l?7�X]b������|3�?�x��1/���LU �6�>�6�=�S�b��A	�4�i�6,<����^cIK���`���GK}�s�>�D��Ї�ݸ��>`�_���oa���^c����>V8qb���
C����&�������אa�R��8�N	cq�@�Z��V���.�pa���h�l��g\���G��PՖ>��R����6�5�
i���B��t�c����.?i~{���F�c�!|���h��Ƞ�Ac�X��VXaC�&�]H�
%��c[�c0�!�ֲ֕!S�����*+���[Yo2!�S@ 7:J���>O�/ ��L�9���R���b��	��e 	3k]ş�탎�U2�i]�	�c�zdX 0aw�V����0����3�#=��#���0<ݔ<nw������C]��V�Z=V�1hz�,K����ܪ����
�^�O�Q�q��~��I�9������wy��/�#�&T�I[DE�CT8ol8�K���ht1�=���2���CB{�`��"\��.�}p^ �O�R΄�t���\dMna���G�f�j����E��n�IW�x��|gt39��Ȍ��.�Q�`��q��	؏~@�Dw.��H:�+)�>N��R�v�-Sc�O��j��,R�[iy�r��/R��]�5<�Y����D�XN����-'n���V�H��[�p�q�Xc��LD�t��y)@�${���{g�'C��m�*ىs4�@�I������':��/M�LWw2ƍ0�R�^u0D�1E����S2yH��NK��f�8'�Rm����gN4+a��띬����u�t�-k���F����L(�	y6�n,�u���,��J��'�����j)W�أf�+�b}�|�G��dU�b�iF�	��>����8`L
T}1~4IF��x��b*p���f�G�K]�[�q%����:q�/a���:�_QEQ�BDb;��WY�81s'���NF(m�0H����8u��bs��g'�q`�j|��w0�D�"�XH���U�K�R��byU��7�3�����~�ڕ�`c���P+���>����_�	x[QFDܻ/_#\�wy��q��U�_�����=�,��9c]�-��j��QD���M�����-ljÕ5�Ԡ ͮk>�8��;�G_࠘CP�A`*��9ڿ�;o|�"��E%���)���w
�ӄ��}�x4�Nf$��9ߵ�mZ`��#%�;'��5NA{�
.7"ϼp^Ĥ��YT�W�W`�(�YT춮�"l������J$��&F��ϏN��Ǘד�͞�{Ԓ���L���sq�3��+� ��ћؘA>PeQ�=����c]L�t��w��qgٮ��[ј���[�g��<7�,�9ئZ�\WV1Cy?�?��G����7*�>4
,��>�Q� ��������� ���F;��6��U�Vt���7�l֡���,����W��7�.D"��#3X�~����E�e �)^�+4"����+B2w��G3c�t�Há�6Tq�@�x�5�%i>^Z�P�F��}���<�ةx?��]c�|1L�J�;c�1��+k�e�-ǊU5,T�����J��E���z!T�����4�1�/�'T�4�R&Պ�S���#B��`F��������k#0�d$���
	���<�o�Y���|��_��flQ���k��N-�u��p�H���z'݋H���#7�u� �X��r/��S�R�O�G頝����Y�#Zli��2�@v�./�8��CcT��it���7�P�Q$��zF6,+�<����^�/�)juv!*�*4��_�"��=@����U�c::�l��b>��M�V�x���v���kWp��Qӌa�݄eT����)%W�ڼll�;����c0���S�����r}ntӺ4��D�}�t���ż�>��R��I�\�� �k��J:|u=�ވCQ�}6~	����j��4�hk�y�f��B�N1��_{�4�x�S�p�7oa�f�x R&M7dw���FMX���)j�b ��*�4i
���c�e�`��q�����s�_�Z�<��7]7Q
�VR��tL���~��co"Yf�"�p쬮��Z���� af+k\��@��
�XAC��H��W�$ I�f�A��+Od�d(�C�
5&���J��R�R����roHlȰ��e7�M��]~��B!N���>�R��/�n�u���T�>��z��U��=[��q�d+�L�,�DÅ��!��p�[=M2�JӉ��Ns����S�Ą���c]�֕�h�T�_:q�F�Lu�}{��q�:���G�+�}�A̎g����� 9PW	U�@��\H\��қ}�{�}Tج�Nx(�8��m0oNk��C�\�L�(�=v��[UJ��4u�+���TZ�{�o�KK�DOl�!�� �w����s�Is��M���бX�K�u�Z̕K�l�Y�W�!�}|���O<�)�ט�����>��ϫ�(�0��QVV��c�M��Ǐ׷㓦����/~�������g�`�L��A�h:��_���m���m�Z���t6��.�pI�r���5a��ͳ���-L� �&��vg>�|�=�
[�Ur��?��r1�U���+��I���������,�&�MaG�F����;���M�0����ăV�?�[c�8�㳛hn��v�����l�:H�t����D��,�$O8���۰P����'�iTٱ�����\=��;ܥ��N��y�C�S�i�aVGk��p�V�`�I�T�1<J�� ����&۝�"	�l��z�CM�� �
  �D�e(D� �w�J��An��Cݜ\.v�� �/RF"_�W`�hq���qo�`ӷ���>W���`��L:��6��-i�}b�y��'��O��'��^�o��sB���s�j��T�0�}�]̙g���ֲk*� 7O�tW�l��)4`����+P��]ſ��|_d5��a�4���?~�w#.sgg�2L��Paι纡5�h;���sȅi��n��&�|�}s��+(�����>����
{!�#�j|������'��Ce�tݾ��}�� �C궈N����5� ��>�[�TѢ`zq��9��%+eY:�� �P�>h�Է;ji��/�
v�KҐ)��=�Z3d3�w�%��g���7��X���v_!گ't�\�'�2wv��ۋ�"��|������x�	��zI?�0gh<��o�� A�Ym8��t#<��/�B����TUDi�-���2k��F�6��k��z&V.4!�;+TT�9hr��0�Q�9G�þs#+���ч{���R�\-��c�� /�&�:_ϡ���4(:s�M������4Q���m�����5 ��Y�����1$7���z7���ܝg~w	�b٤��,K���ׯ���1Ͽ�v�_|��yp�L,��J��u�f�0��������p����BRvi� ��2��K�1ki��qd����u�,tj�!�����C�F� �@Fv���SE�]��j�z�l�����{C�ɚ������,B��?Uj4:C>�a���A� �2�)��q(`�a��ǲ����@`��N�𰇀�d�c� r�v�%��KZ��G����ző\��R$�f~=${DXx��]K"�(�#���Xg��.�|怔�q.���N�gx�Hd�ͦS;8��׹2D�Q�>�&v�C��.g��$��й��'��Sla��Ή��X��DXFͥ��;k2'/�a�2B��j�W���ko��%�s>
[�7?�X�0AA�Y{�� ���b���W��>=�J�z�s��Jx�03�; �6����n�A����e�|Y��\3d�� ���z�4�K�e+�*-�C
#���VKa�N�O85���ÜԼk�U�����6DL�Y�;U���綎�J>��<�F���5��`Qn�-b!�V��s=�(%[O
hj���kvl�u�>�~��E�[�{l.p�bp�����	VɜPϛ�IQ���G� a5H��L��5�"Yq5*�y'_��h5G6�je�#�|���Rf��b�m�K�h�N˴=��W��Qd�[����a���D��;�����$�Q>������Ai�3���f{t5}dY���]����W{�|��W>UG�bt�<��'c`VRM<F&#᳍�����L�>	2����Y1��I�2�o��?@|�����MǓ��MV���j�3J�؇���YK0�:Q�Ѯ��AFL�O���R�y��i%�M+�-0�F�v�D�E��ċI|x3��Ѡ��D��G����=�Π+��¯��V���l��R�Z�zjQ�l�Gm�rm�`�7�!pǝ�aH~�S,)��M�\U&��G0?'0�B����uz���|A�M�Uel�C��Ra1HI�<T�ñU��H�ju�vF5���A{zoM�s�o�~ӵ�'8�����ȇ�Z^Na�������B�s2��:���Kw�������벲RdK�Ճ�Z(5K-��&W�G�N�2tC�4�?�ɷmB(ִ	i���8_C�e�_=�&qSe���׳����B�r�t_"`�`؀4����}�MBJ�p1Y�&�Ĉ`���vx�Od�L�W����iLBi��}�W�0c�,(Ʉg*�h�c�Ha�׍S?��+��r���!�J~<�`�*�R�$��`�Jv�q�Y	�P���5�7�L�%+��<�~��c�����FҬ��i�GZ�=2]��� (��A��LG��ZY�&B�ݤƝ52��/��t�aYg��wF�cp7�|��H��0kb���2�x��($9ij�AzH��Ĕ��G5�����@njE ��nu>۽a�LFOs��g?/j<X&<F�����R���Yc�(<��P���&ܲ��qh�F��Z�-�x� �SaTA�^hj��,n���i��;!�y.�	�>�	�#	z>������^�V��m��x��3�����K*j1���4p�; -�����������@�	K�k�)Ll5��a�)�dMi	|����ЫYۙ��7>�>����y칲���Ft�̩����a����X�6�+J�=>R37dE=ݫ;͇��4L�p����"u�?�<HY1S"0��Ϙ_Mg������ـ�0��r����_��a{�-��aQ-���aX����4֠��;#��	@/�(�x*�J�RǺD6�G���������6+�zM�u��E]E� ψ��r���)�=܇m(��q'�ai��������2�0+L.�ם�3jNq�k����E�BT�!���YgJݸ�So����3X|�j���kH��Ȃ��L����T��NIj�s�vf���DZ�ՙ{�����Yj	���@h���bb�
a����U��;-�>�#j���1�b�g��|�i3�\�8�._��,�`�I�o�U�nGi����?�g�����      Z)   N   x�3�t�/�KQ��)�M�2�t����K/M��2�tJL��-��M�\&���%\����A��)�E
E�9��)\1z\\\ *ge      \)      x������ � �      X)      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �(      x������ � �      �(   �   x�}��
�0�s�{�
��_`�E/w�:\����oo�6�	�P�߿���h�nra�4�':9(0P@I�
/��}��>;���پ�|هg���(�d���|+`��$4�漞+�j6������4K��@iH�?r!�Q�T[k�z;�һ�|�iC�m�7��=�;!��nac      �(   �   x�3��,�I����M,J�JI,IL�L�I�v(IL�U270P��H�&Ae��SRm�J�bkp�22��+�.#�t�����.�4N�TEn��ciIF~� RH�KQ���B
�]d�;���2$O�!9af�Ӯ$`����̘3 ���/1���S����@�]Jq�yi�0��r`��E�L F��&��bDܘ=... ���      �(   �   x�u��
�0�ϛ��(]��j[E���t[i#�*����������� \���/��bj���T,���R�գ��4W�QXY�+���Հ�[�4yo�k�u��g�2����t�N5+�bU��ryn��v=6���Ա)�V��1�U�MG��GC0BH��a��B�/��ga      �(   y   x�3��M�+M��L�@.#N���J�ĒĜ����ϒ��b��2�JMN�+�	J-)-��Pa��_���Y�\��X�&��e
�!��"��T����S��������X���W���� e�2�      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �(      x������ � �      �(   �   x���[
�0E�'�pef���"�!���*�@���QӚ�7���p	���Go�v�q���@(.�����|y�H�k���6C�r�d��w:â���i��x�9S>��"q�*�����_m�9�u;vE:#���F>�B}��>i�(�C�:j��'��]��6 ���}�⠔z�3��      �(   V   x�3�LIMK,�)�4�30�L�2��/K-J)M���̃	#	�p@DM��@Q��)\8��4� l�� 3���9���1z\\\ D�2�      �(   H   x�3�LIMK,�)�4�35 � ����P!%�Brq�'����Ńđ	d�Ɯ���d�1z\\\ �� k      �*      x�3�,�4�?P�!N]\1z\\\ H�      �*      x������ � �      �*   w   x�3�tIMK,�)�44�30�44��p�D�#8a�J�u��sa�Bpq��Ǉ�e�Ļe�@m��FE{�9=KRs����R��6!����D�d�阓�ZX���&E�+F��� �J�      �(      x���ˎ�H�6��y
���tv�_����ԥ�TV�h��^�x�����*� �:-h�]���DfN� ����h3ՙ��͝f��vq�[F֦ſ��QT/������h�5��o���/W�m�(c�1&N���6+�&�Q�����3�!Id�L�B��K���T!�1k ����ɢ6�͟~m�i�7�A(5�b�l����˺��Y�E��O�h�*m�Rۚ��EQ��0k1�]E���2���?��H�Ycz;�.*�$�He�����$��+�p�&I&��i�*I4�0����1=C-ILp��Fu+(IP��7�&Ϛ���yb�G��������B�/Il\ڃR�G�̗�T��V�h��TD%ɧ� 
x�n�쁽�V�KªA�u�R)ؒ�����;x#%ɪ�c��h[)(IZuk��X+-[�V}�d�����4MT�ynK�iZ�U��U�$�����{4�:9�h��x�5m�"w$9݁��:�p�@��ҦUe�H��R�Q�Ul�#�� �9�i2H��#���֫(��Q�c����X&*�@�d�)�<�MN'��A��e��w�*T���]H�;_�v-	U"-��`K�8��
r$P� �;W����F�c����[��$�X��Q�5d���(R�F
�P0�S�EZn"ut%�5�j���<I`^m��}W��$�lk���+ I(G��r#� +�7�b{<I)kr0�
Jb}7ٮ�USAI�/Q�e�MpB@�V���$P�Wut�@$��)@ҶR���[�H�j/}���r���՗��m �ɔY�KL�@	�|�S_ΗX���!�����1��(Q���&3��ͭ��H�����P&�k�?�U����)�Pꢆa��J�,%L�6����T��71�`,�8]�ˁtJ��-�r@M[�`,�x�ۨ��Z��J0�y��.�$�p�M�?�[K"�n���G��	�a����0�;�{�)�H�����$��-Y_U�3o�MRgP(I,������^AIR���>�?�:���gu�K��e��l�:ޚ7yt���,�;��E�w�b8`Ǉ�,Վ%11SЦ�u:��Q�kW��P�H�\���\JB�����ı���*O��k�l�������,�i��
KIb�����:-��t$���z:_���6(�IZ��k�r������-@�"��b����k��&"����]��&��RR���(��$���vU�Ɣ���*EU�ZX�T��'�l	u �A]���X|	����8�Gu��\	W8	h,�d�6d��c�$����Jգ����]����b�����U��y�%^�`E��EK� $���`5SA��@m��,I򴏉�!;	���@A<k��$�:����Ð��X��r�S�*KJ���x��T]�r��`�����<��HAtovѭ�YR���p/�/*l,�tH-(0)�O�b�@�c����hBJ���x���<�J��r�6;@�LVH� h��&=D� _��V�\�q�i�Y�'	)�ާƛ{��R �����JՃ��4��P0K	S���sbI���('p�D��.[u�J�:�5�f��̙#�`�Y�1�R̿�:��~���V@J��-z��F����f�˥����5ا�uF#SK
��u��)&�E-���Kɀ5x���1C��6W[J	�u}���!XCt�Z#)=���Hu���Xl�(2�������Ȯ6Qj��Uۂl�wQ��	!%	 �1�A�k��e`n�ZW�:-�<��wс`�۬�-V�ª��\6ia�K��	W2��|Uo�kH��Dm=]eK��)s"�6Yn���UZ�t�Jy�fN�EJ l���P��)�6�����&��ئ|P1�P�-��q��6���Y0��¦H�T��|Aw)���;0��y��
�UuUBԬ*��x�T- A�*���æ^��tEHI��c���͗e��ek��V`_<���$C0s���*Ik0����$�$����.�I�Ԓ���N�$�v� �p5"놔���gƻ�,��{�꒔��B8�>�Լ�%� ��R"�}@�6��F4����%e"�N��;�*/�"���x����^Ey�T��YKJEla����l[I6)��
@Q�%9PKJHl���3��RJ�( �� �����@���+"�#�`��gu��v*P�BԺR�����Ķ�p�JK�Gd`�?�(O�TƇ��R"���n���,�!2p�>�M�=dYf܀�w���T�/% �[ v���ٮ3>��dD�R�!C{^�i�g� ��2�y�#����ш^d��~)a�W%&5�Pب>���Cn�l�*�@�?R2!+cS�S���V F0�
��HI��L��MWW�tҗ��	Y��F��,�R�*+ۿ��
�w(�}��a��~� T�P�B�D5R�C\�Dԭ���*}��]u���-����iK)�����{tќ�-e%n�%��Z�/�j��]�VW_Ӛ��-�'na����r�X�;�v?��u�1���t+�*v�
����J	�]
�r�(KB����_��fuZ�RBb������l)!��>Fe���-�$v��Yq[�G�@Ͷ���-�$v��B��lfK����{������h�*���ح@T�=����|��mԨ}J���6P�5��/% v[m=Ɩ��m�4[�>K9�]�3>�a?t*J(�Ǭ<D�=�b�R������$Y��Y��ʄt,ɣ��U��}��{�U���P1R�a��ڨ{-���<�U����*�K��2��R�a�O���4'�T�:���}�U&HI�<���QJ)ϰ�#��R���Lî^u�A51R�a1:t�P�-��v�'�����ǮMK��eKɃ<J�OQ���<[J��P[��R� [�Ic����k�ǰ����WM���l)��G&#�e�{�&"�(�r�>���*��<�a��53R� � �S�H���5��a�����P�Jyp- ��T�I��|�OY�ޥ�kIUn|��w�e���R� ��m�G�{R� o���_&m�ܚ-er���Ut����$�n�#?F���d�a>����%ȻfM��������!��QbR: �@�����c
��U��G�#2��������d�I���Q�&���-�
��������"��h�M��gl)P�|��0<���` A3���ej�iKi����xd7��(���*~��Z�@)�������C�`>GqC�ȿ ��v��8bb�d��ȣ�%�d�4 k���4�U=hdv �гFI�Hj��e)�/������*Y)�/6Q#(Y��vCri��(����Ũ�
Jش�I��#�Ii�">f���kZu�T�ǖ�,�`䮘w6!V)cpU�}E6o�F崔6(��$N[�"��gm)qP�8�K�@��$��8�ʌnG���AQ�֗�j� fKi��B6m�{��r[1�$�,~R� ��--�PP�"�}�����TQ���.o�}>�Ӗ����h�'D.e
�4�iR$��M�{�CǖR���az�-��%�/,֭�)Б�{tҾTu���Y̑���ۗ4ڃ0Ч����0�D��;R�_���x5?�H�~�ʍ/I�J�|�T��߀y,>�L�V�{��ӿ���Ɨ�TЦ"�#��e�nuo�*0���)�mO����=��V8R����%��njIL`1�d����`'��'�9��(3�V֑�ȑr %XP��t��~9�U��aIv�j��U�+���s�D\��&u�s�� 氱<�U��H��0 (ɪ����5���U7�;R����K�:��]��cg|�)�ndv��Ay(Uܧ���H��,Rۑj�#���ӡR+��*(��/��]:R������#e�[hr��ԍJ��1@���:S먎�.��BW�u�dA�DƯBIق�i Ԥdמ#�p������߼�mE'��9����P��AJ"�������)%��q���AGGEz2��M�0_� +�4r�� ���hEȅl�o�E��{a)���e�+x<y)��O+6�y2��}p���|���/*���    �>�mב2{�ḇ�ge:!)���;�UZj�Վ��؃��J���r����Z��O��u؃��Z��굔v؃�6]�HIV5h^�꬝TU)���������*a�X3����ܡ��e���%�t)��T�XN�)���6j�-�GJGԠ��0���+�j��0iA�U1J�����o8��)��25��ߢ���x#HࢧM�:W�	�R�7�V��J	� ��L)!�D�q����̑�`k��̟~[�3^WY$�#�V��Ԋ�#e"0���,_UJO4`o"�V'����h��D���M�u�#%,��y��H�IE�&��rE����5�j��#%+���>[jT�\E��MZ����lEWl'��)=��55UD��:R~�I��i���*J�K
\N��mՎ��h���҆f�~o�H��fr�6�b�2X�-}5)ހx�����LE���ɒ�8(R�o@�ۈ��)O�d�gVM;Rz�����l���m$��F.�q�Z�\�ɫ;��R����J��#�)p5��f�6ɧ;R��)ґ[�K	k0R��)n�O�:�$��4>�`�HI^��,��M�<�VKO�h�N��DS�Ε�{W)/qՔ�I���M���Y�#0I��TZ!u��D��,[�+J)'рo}nH
ە�MN#2WJ84{`��CoWJ945�mu�Q-u��CS�hH�z�+%��򼺺����m�օ,�4��#���7n�#5t��BӁ̺]��n��_h�5��D���^)�Ѐ{p�5���d�= We�>)��@��)}WJ)4�b�ܧ� �Ji����Q�)s�@dY��$���|�6Q^mT�X-x*ߣmFW?WJ�}ߣlB�R� ����)�+�
ZpG���*ȒIՆ�#(WJ��4hAc��|OsT�+�`Ti�~A�Ji���w�4��r��@�¨Ҷ+T����N�*���|B�Rj �;52Rf��V_AU�%�@y��6�R>��j�½*Nb}v�;"�}�X�RM��J�3�;nS}RW
��պ�����v�п�~� 	}����-% �C��hʕ��v�᫘_�F���R��֝�[WW����5Y�l��������="J)��-X������ւ첞�$:�
u#�+��8�wŪS��s����{�Ϧ�ZW
�ۮ�+&	B��9��S��qZ��E9UB)�o�A(�^,W
�����-�R0�%��[Rt���R,߁�~Í�$��J�|���l��TS(�ݮ6~�Ցvpc��Ќ�t��\)z���oe��],�2MT�X x&�Մ��w�����\)|�C�;1vR�N��{J�%�R�~����Yږ��d\)^��r��*���?dd��kG%%E�x��?��"~w�p�"�`�_���`�V���vPAK	� �!����Â��4'�K
���٪>U"p���>/�-�Jݞ�JA�=��U^�U�X ��O�̕"�x��i[��Z�8�U�?���I[ss�������"������%�O
�Um���;z\�X����'���$���F�G���T�A)��^Y���܊?p���|H��#؀?"�QB��.7��ru�K�#��tj�Ѕ�:�,�t�	�fWV��Y�fW6�4��؝���7p��� �k���7���Z��9��E�,:�<2�Ѫ@#�:Ycfe��B�A@��f����CVDmj���ŕgҨn��C+�ԇg���B��b��\E	��e;�͡�ʍ�O�}�j�Z^Y��/k�+1^^ޏ�^Y��#{�(����D>V�;C�5��)�I�=r�T�� ����j0�]Ճ>��5ԧ2$5�5�m���ʖ}�`���t ɳ��S6@ �f[�
��#ay��0ҍ�.-�:���n�?Tqh����ø���B�*�Ӹ��p��.��x�n��w������qF��+J'^n����'n�Ll�(����Ρ�k�:��ɖ���>��x`[F�5��ahpx﫫\6�'+eU�{xҜ���=���� F�m����:�[f�P�`�<�Uw5�W�Za*UkD�2>�!�'RG�7>g���)�
vF�OD���	Fz"�Ě��"���F�c�K���5�c�H���Z�5���n@A�N�
sd��X?n����դ0��b��k��Lݽ�Y�|��5��� ����	��c��am��4��7�z�sZ�����m��5�S{�ĭ�
�>��e����j���Y��,������aP1���iAT%�����(���ȳ��o�&:�7@�  0�����+��g��K�����/
o��ݘ�$��l��>C�,����`�.��� l�PJ���"�b���ƶ��d+ˍg��[L����U�������7�;X��/*y<$3m|�xј?��l~���WiCŒz��ԝ=�`{�+k���
��Wy��h:4�3�ih�+���p�Lq�˝�dAy&��!z�z�L��lF+�m�u�FY�<��d�����]=���ӌ�}D���D��O�O�r��w*�`\�y�����N��o�9(��[X]���Tm��k�7���*�2�,�U���q�KUy\�b��U���g���F�VX&�#lO7�GM�P	mPq��7�
"B��2���� w &r������F-��M_|�����G؆���	����7j�s�R�h/�	G������b㷫""��]�@����˿�k� 7Y�Z��#����.J�<��p��&�o�Ƞ�lk\�ym��
V���1>��G��@�d�|Uqc�c�k��W���� �TĘ�����V ޘ�{#4XtȘ�?��ٕ5�|c�ʻ�::�Nyc��O�9g����
���`�]2�6&�,��f��o�{Ut^8¬�1����b��41¬��,~�X	�*�,Kux�5�'F�H�#Ljh!����M�>a�q|ժ���c?q�'�a������M�nى|7����	fn0�Ә|ʉ��.��PB���\��/��襌�0�H�_���`�t�`����eI(���sķ�e�(�T�����S���+o���g/���ܷ�����ǽ��_�Y+�o!K>��e{����b����V«�xƩ)ZѯB�b�iYD��O��
�}ĉ��p�m�	�(E�V�H��r�����B�	>Ә�����/�����}�P���* {y(���AqԌ�voL�(á��l�X?*6�X�*t<��e}�o���c�����-1����O8u�R�?j���眴������p�2�t��䯌�8�R��4��$���������q)��ٕ�k���+&;��?��Uƭ�N9�ah���U��7��`����Bm�ט���ҝ��K[NX䥣'���%��vy�n�5�K_m:�:/�хzI��2�$:�7�����S�� *�\��/�R]d~�ѽ�������D��B;�/��?���#��&�7,��Mtl�$��o�o��9�{���U
���L�oA���FDiT�[Ɋ��s��|��F���9�-[i�Xs�r�zc�[��;������Ϲ��+M�˅o
N�Z�V��f.��Ty=s��mU�/��j�e+�oM�d��mUC&�	�h�9�޷U%y��b�:���V��u�V��^VlUG��U�!��.*����YSU�9��~��ï�����<�r<;��Er�|=���5`Mka��j�R/�;\��K>�pF�m���/^�	,��i��/Y��^�&�O���o�_^��b���������T�屜~|�hl�n4̺O����-�=PzO����(/�r�P��6�Ss��N?�d4�F��{��/����.�=7Tw).�.A #�Ό���_/�ۇ�m}�|*I�]ԗ}9r_��9�����B?����=,���v�U��+҈�\D쌫ؙ}Z��:J^��������e���/�:�5n8ї�R�[�=q{��:��������x������ۢ��G�#�bG��Xvz�q����S�:��<{�    8�>yΌq�&�ģ�F��sO�B�d��\4�l�wb����^��y��^��F�ǋz��n��~��qIΦ���m@8�ە��k�/���r�C���w��.�氿���gG?]@�o���I��]�?_��,��!�����a��yf�
9��<�0;|wL��G�������1ݯ�
�y?�E�F8���T��EWg/���X��F��q��YZ���Y^�u�磟�8w{r|�>��~ �1�����yF����ߙM6h?���o���bK_� �׋z��,4�j�}j¢���^�̊���&�M�o�3$�5}�]�u�l����8JU���\B��\�:LEX��/��R�ɴ�b]�].�G�:��loq����E}�+3~I�.��P����
�ol#��G����+�?\�#̒P��Mӂ�{m���2�!z��i��m��oψ��o�Khӵ�}.0��]�/h|�L�;��>@�CW�G.��/�4?�t+5� �O��W����_����`^�����"�U:�s*Ԭ�賦f?��.�g��g�������c�J�\L�&L�_/���Қ�P�_/�f�Ҟ�����?]�+̴�3ݫ�G��.�f����oS���.�f�қ�w��E��\*�ؚ}���L�����o�ؖ�m���P��?+��pS�{�����O���b{�i������1�L]����<��w�߂��t�b�L����=�ߚ�}B]���/�߅���+�]ԗ}9}�[ɏ���E��п;�?s���.�˂�[��+äQ~���E��6k�C�����+���'F?^��K5~�R����g��E=�L\�ދ)��ǋz��f-t����IZ��^��8���v�Q���g�ψ�0L�Ke�O�~�rB����U`9=<2^s����b��2^e�<� �~c��}#h"T����S��a:T�խR�g����)����WM�ytԵۊ�Pط[��զ����ی �6ӲI���Ik`-{*�{oK��4*����/(܋þ.�W�R�%Ne]�EOn;"�4֜�V�,3�k;U�v��}�e�W�s��k�z�oq�8a"��"4�g�h����f(��3�o�LY�i��>'��v�7�J�e	�d�aX%ƫ(ϣ� ��2@JD�,8`�����ݦ�
Ǳ80g@B��ǥq�U�o�����p(��3hT�0`���GAxQ����YG��6����#�̍���3�d�P"�������*?�v?�+��8f��g�z[�J�����?^�H�ZѯC�3?�V�Q�N�ɻ���+�H�����v�f�"|����R��"�� �J<�@�;.�F�6^G��+��.�Gr����� �4�����S�����(�2��Y�'ђzW�r��[�-�\C��	\.�un���ΌX9n.�օ��w�W�����-��A}��)�wU�Os=.#Xv�
����������Q}ʅR���lC-��R����	
��`w�5�9�g���zG��qv^�Q��sn��j5�9'���$�$����ZtÅb:-�9g�Ị:�����`��4������%�������\/KvBN�=��R�s�W{�WX�	�|�yX��#\ɬ�9�;�׻>;@ �����
����b.�}�Vq�����Cekw�����]DT6�|�Wx�
X�*U����3P��PmW���������x���-QzB�����m���a����~s@��s��߶Ѿ�4*rnי�-c
>0�pVױ���%�|���[U&D7B�熝�Y[C��f�y'�9s�ĸ���1	��ڱp67�q���k�J��4�9��θ鲖>�|n��͡��������@Bl����)�Q[Wf��C���%gy~|�~-9��>}���3I��l�&Έ���w��{�7]�0B�3��6~��#�y"K���G<��}�o���D�c���[��~���Rb�Sw�T�5�r�H��,���s"\��BL7!$>B�S[B�!$1���*U���ӵq���Vִ��٢?>�ϩR�z}[�m��pQ��ag�h���&Db>�k���g��N��Q��r�`N�m^4]���BϰR<��Y=|NPP����	�W}����A��q^�q�A�=jm���>�^����?00&�h�1�m��UE=���R��ލ"z�kq~�8���5�ahs>��ڜ�xmC}��@8�d%��ձ�5��i���"�`%aN���s/�-�#����a���b�m.��f_ins	4n� %&.�v��龪鰸0:$�w'����u�,��\��W�	�y2`�����݋q�&I�I2&���`�3�j��:\*�`�a��<r�X<�Z9Э.ݡ������5/�6�Rs_ȿ
:c#��:�l��服��L����i�?;9c#��!'l��㜍��^�����I��v0n�7���fRŝ�7��8�O����I[¿��%|K�E��oҟ�%|K�y[�����%|��I[����%|{�[·TϷ%��l���4זx\n�oҏ�璙�8>�ͤ��Ll�����,H\�6��Ҙg� ~]�}�&̡!1���&'CdY��x����{����F����q�������d��mط���<���A���!λ�����k��&���Z}��}�n�Iڞ��mɋA\̚���J0c�p�X��s��:��׆����yդz��c�4]��AN�ԑ�8�����}�4Dz�cpa�C�`Q.�ܸ�=�-�tKϣ^wT�
�4O'GKn���h��7��y�����Q����'�B!�f�`���j5��@d�P��eBk���4�5&-c��Vq�b�*O �fp~������!�f����c�y�?���6J�������m �fϳq�D�p����g�`��ڣ4!�q����|����*P�hP���2b����g�m�Y\�tnKs��s�x(��3�����$�.9��FSY.8�[v\j�YǗ�c��/!x��x�\��x�������|�pz��ٻK�b���%D�r���%��s��%���_���щ[���y�L���ǖ?��g[B͐Ӈ�.!�f�����'�W�ܢˠ^ѡ�t��	�O��eV�aFMm���R�����5��Z��c���rbb,!�f�	3���?��B&�����/{x6k��Zy�w�|e�+�UQ�[�y�T�Һ�w0�Yѵ[x��Gǂ�C^B�ݷK�_�v������J��c�Yf1"Z�w_�_��H��<;^�a�jJ�Sq�d	a��}#<9a�4�/���2��j�%��}���$�	f[�����q���٧��c`!�n`��Bر��<�i�JKG�q�RS�\:\ī�x���r
RUI
��VV��v�DWc}鷸�{
&5���]%���1�_T��*���<�"\�A�y~�f�CK��j���j�TY��D��jBT6�;�HN��h�󺦹�Xw22�cu��EBK�kv�^C�t�,v�ǚ�/�t�4rv�x�W7U���G!0̫<�Ub�\�wXI�����|�C�#��E!�θ$?Om]!�G��Nq].�l[��6�].�S.$�HP{\@���U��A�t5��ɔ[,=�K-fS���py�:�Y<�[�n��[���q�%�'x��N�B��`O��g��A�p�$��&ޥj\���4�D1u<.�D�d ��=3�B�Ns��K`ɍJ�5�/�jvː
�bJ6��C=�x�s�$b��|t� \:I.�c�
�"y�����i��}�)K�]D��3\��m�N����3�
ol���bx�<6��^���������_�̖�6���f��>�������R� u���h���p��!Tf�yF��K��,��m�m�dX�3P�����E"q�aQ���-���4�����"(��pRG��7�rЋb�f��[$�>Z�?"]«�c��I�-!0g4��]F
bs����}�xJӪ[����cK�= 7�v���I�x�=.a�+�C�X��    i�r	�7�5�#�e���6�U���I��4R�W�D��O�o�3óp٣�}�ߜ�ߪ�"����r�#��O�pi��B�JDW�].�Z!��pz�SM8�1�>�3��0��+��Z���B|���2�m�\B���`&$��R3�d���`%�1a�9�XB��`a�������c�����<Q�ܦ/[�`�)�nx&vĽ�=��wE;sz�
�co�����v{^��5�!�׷:�3�K�㦙1�R��D�)*3�Ań��{���`���W��ou������Ӻ�ضg�!�gS��$P��1k��7�3׊�l�� ���}a����Q�@&��O��=S���]��cZ���V׷�a;�XLH!>����
Fȣ��  ��)$R"(�@I(F�b�*[��B�l�EL�^E��K4x!��_�@Q�������"Eg�4o�����h�Ag(J��(F0�Eڭ4��{ר�1��0��G|�7;S�>��*��M�ù�Z!t&�(������v�fk^�+�+:���(v5:W�y����*�7YWPg�j�F�W�Qg�j��r��v�-�q������1���V��:�įq
�N��b�c��1�)DH���*�&ּ���U��G]�֏����,w�|*l��F,���4 ���+�S3jf�+��`�ms�%���ն�BWH�Þr��]CG��;��Җ��"�(#�������+S��.λk�j��%��Z�1o!Zt�b �[�<.�x���8B�~h���ǹ'��(<�����L�*4f��̏a�A���̟P�;l��q9ě#�uZTq;c�^�<.�x+^踊��մ0����2�A6�u�5�B�E^B|<�Ͼ�����[��M�F�S��Lzi]UT�}!���]���qaSAB>U�a�$��G��jj�L��F��7�j�	�,GS�m}q�R��{��׬N�`�� ���i�PN���8�j7)�@0&�5�A����/�
E	9�-�>�u�<�RH�7�`΀�ߜ\�.�$�`9ء��%���N�"�w�%�0S_j�܀#���p[�Fb�DR�S,�rI��X�ꔒ�PRh�&�@�j���Ha����E}��|�e��"D
��=+�l* ��rg���Yc�C��F�i+��9�S������N?|�|X!�뾬��q����ۨ��I������X��"'tK]�����6+�/���_�"�.;K��������-9��ࣿ�i��%g��Ê�e�`�6Mp��n��*m��^r����7��oߞ��t�5�پ�YË�'�;�zG~J1��{�?:�}4�l� ��H��m���V�H.����Ҫ���%����ck|D	Y.�H�����\jX��m5�a-��6���l//KQ\X����j��Zp�l@��"�)�\�>dE�(k����C��U�'B�DȽ��Q�Z"�ހ���CTKߛ�uܦED�=KDڛ��Hh`�0{s� �i�D���ǁ�[�����d:щ�z�|�`��YZ�Y��:�=�U%So�uާQݧM>ǯ�[��in�0{�|�{�jY"��[�G�F�E������MD�KD�̚�=e��q���Z�Qu� �$����t������َ|dQEp�g`�>�yVV勈�����h$,�b]UZg�P:����<�
��j�sN��8�M�$J�D䜵�-ʩ�Dܜ�����ݦf���*���C?b��^���^7b�b\��^mK\�͗m�kF�}[ �"�x4��o+$W'�9�w�:��!�ټ����u�5K�;x��Bg�/U�n�Ea�:"o`M�!9�wMg|Ԧ�,�`�}���1���k�;:ADL�;tȅ��wTDL����n�ggzs�S�e�v��8���S�ҥ6-c\�)]���#��|�t�xۦ�5)��-�"�m���Z"�+쳩Z�9�p�����pB��=�uw���8��;��jR(��qb�4�)"����}���4ͨ8ˋ~�VfmE�-K���ϰN���Eh[$�c}КS�)��.���.��S�a�FU��m���h5�Ɠ�m�!���l��L����������Z����8��.}"�-
�%K�E���3*JĴE�8-�MM""ڢBb�F�$"�b�hm*M>�1l��{q��ܮ�V]�-�k�������q	n�{G���k�	U��]�w8�<��4��{&�螎H��@҇L�r"f-=��n�j��yD�Y�L���������)�X"b-c �b��D4�:K��q��h��.���<�h�D�Z�c,��q�����OѪ��ŖdK��_�M�ApQ�[|�{�}T웭αal���WJ�Ҝr�DH[��d����j&��r���ļls��$�b����M��M �.g`��,��'�G�%��ߣ���b�p*�������\�8�}D}$��?P`7#,c��C�%E��Qi��0�n�J�!�EdZ�q/���i����F׶�TK���ۄ��R�hvetG����Q�;���&h�E�Zޛ�}��9Y�E�Z>�Fk<LE_�E�Zz����w��a��xv�b��^��H#=Q.�
�ȯی�-�j�]�-��"x�����:B\U��tC}-[�U�V�P�]���w�kZ��!��k[į{p4�fmeu9�Z�b��k�Q�������� ԙ��\��g�|ʯ�,�u�Ԩ��^����0N�7�=���!�������m��a>�g.�}�tJM����B*u�m�}�ED��#�=��E}z�������X��?U$���hQi��v�F�X7[D�?`$�i�W�o���K���2K��?�|�G�������k�e�X33E�[C`r�֚l�-�\\�����]�i&�vkP�?�b���l�nn�m��S�#��<�o0�u3JD�8?�u�8�
Լ)C��v��RBabT^)!@�60�o"� ,�8�)�Qo��No:M�n�зII��c� ���dz��i�k����5�Ce~����e6�3���ED�l�p����q��~�	?�n�+�X�L�<�h_Q���q���="2nr�����)�h f���)��5���ZD�M���"�Tӱ��67�Ͷ��{��\*t���b���3�Ѹ�!rN��=��M &75�^��xm 7��H�Cܝ��M)T����w$7��Jm��Ar�!�.�̗u��8"Vn��aNS6�@�AO%*2-�p0�7��'B��;���>(�8�t�mߣ�lb-�rf�{W��/֯#<Qhr��s��{���(�g�C��m����13�L�&B�E������~7�{���qH�T���ع-"`I���"rn!���b�ߤtF���X�L E��:mΒ��ǾW�H�2AcZ�2�:����Ȱ*G� biM�54��E(��!�.�)OD(�>��>���-"���|�rMD�������At߯�3���&����Li���;к�6��PD������`����L����@�~�պt�-��n���Q�}�d\`]���ّf�p��c;�v�����+"��@�՝�;Avb��q�N�d�A4�{Vo2�tE|}�����ɗ��]�t�6*\g�f�\dw���a�f��Q���
�g�^�i�ewW`���-."�ۛ�ȴ�k�}�����]��䈈���{ZUIf�#��{`�?�fʊ������=8�b���{ꈰ��%�t!��[P@��9"@�O�xdM�е�1��m����r'd�+8��0Uڒ��~���M9Ҏ������r���}���fo�#������j;":�? �{jH�����c���S>���B��D�����*\T����Uo�65w�?�,w�g�j@\\	�o�ҵ�wF ��zHY����',�s=`�?K0�5	�Rz��]�C�&�4��b�?l1�E����n�{�O�T��"��	�.�HX����}E_�>c�7���#b��B���Q��*    {��C�vpD��P"�c}.�	��2b�>Bҫ��<�#�ㇴ:�B|U4�ϦE!� �q'#?L�I�x���i���t戬��F�N(�xhD)��&��~�Ϡ�)m����=���"o�������g�!����LW&)� B�<9��<�L������~��Cg�\��X8�\�'~�C\��]l���U��.R
�0�?�[���[��a7�+�U�F�CT���_�a1������=~>P`GشY١m��qs�D��knX��Xc2��L��F�2j��*��Jj�N[H��;c0W�]��,`�(�x���'w�xg|Ï����s�V]�;C������'h�.��l��o���{��$l+��Ἠ��G_dM��&r_WIϋ�Gf���7�oA�l�N(RCl?hz��9����/DH��G��^��~<L���Q2X�a��Q�$�kę��)��x��� <I����^������ͶՓ�t��jn�pJX^��u�2�������H$��Q�B	�s��J	p��R	r�kI��K������N璫I$�'8�r������Dj ���%R�'�(�Z�]R"=Zq��M� �i��C�:�����Ωe����jX�d�l��B�N�R���������U����e b�ZB9&�2Z��{qN�ehq�i�m;���Á��2t9��jz��j���_��a�	>U-Ð7����7���K���r)�cB-�B+����^A��j�t9�Z.=;��K�Ϫ��􇛸�z �D/�����ː��Pw�KN�/�]w��������gꮻ�y�ٺ�.����]w!4H���B��|�u�y'u�]uRw�E�agt�],9��ւC����e񖗩�kٜ�_���
B��j��%�f�%���{�ZZB!f��%�cB--�OPK~�Z-�-����
�gՒ�'��PK~���t��w
���%�}������9������s��y��ji�����P�	�t�V<A-��PvKwo��s8n��	�r���	�q�|{��9��� ���� �B�S�p�0K����0�[#,�	cq�t���2��� !�4�9H8�r������ �|��DEHF��AB���u��B4���8OH��� ��l��$����V��R!�sw<H���N�� ����� ᄴ��$���|׃rRn{c|!#�	#$t��	�˞g����Y;�O�)���v��9쌝��;a���c��)Ɂ'�T���I;Xq�NB
g�T ��N��Sv*���NB2�v*29o�!�3v*�9i�B!�Sv*�a�B!��v*�z��
��f۩P��
��NةP�k�N�BN'�T(dt�N-��fکe/,g��Z�}�N-��SK�CN۩��ag����vjp�9;�9���Z.9f�Ny�G��S�BHᴝ����씷̟�S�B��;�-�d�씷29k����i;�-�dN�)o!ds�Ny��y;�YB@��g	Y=�Ny��\;�YB���g	iM�)��S�%�4m�<K�h�Ny���<;�ٽ��Yvʳ-�>c�<���I;�����S��r�i;���M�)��9挝����g�3i��%G��S���;����S�`���r�/�S��̤�r�L��)G�挝r�dN�)G�攝r�xf�)Wh��r���b�\!��v��<c�\!�v��S���	;�
��S���L;��wRY�.J�����4	gq�jz�{6ǜ�.Mj���Ӥ�.>�2Mx ]�&!|�P�M�0�H�I��#��iJHa��1��_�&ϧ.P�����jBp[w�lW�Q�0����$�`�z���_�&����$��������g�}N���N�x`s�\�`B��?�����I|�8��A�1�:�qRǃ%G���P�~J�C��9:
�O�x(�}N�C��:
�O�x(J�C��)�O�x(�>����K���8R�F��"]#!��s�����`$��!'.���>ǟ��-��H���ȕ0j�Q�0#����F��h.��pB6zE��d�i���C���/<�x�x���N��_2O��"����K:)^�Zp�)����Q��k�4O����ZB6�z�8'�k�2)^+�����
y�i�ZK�)^{���k[tZ���a'�k;uJ���A��k���-d3!^;�;���k�2)^{�O������X2S����%�vRr��Q�$��4Or����9���s�����_�5��.8�Z.	dq�ɋ��6o!_�%A_�%\��{��|A��9DsE��8N��K�4!���}��ނ�fsҳx�iNz6�Lq�s8@�I�叧9�yr����q�8�4�I~��Z���}HxL�c�GF�I�����S����(#����2H�Wl�;���?O�;�������|�m��Ͱ�Hz������(n�"#��&�1��e	Ĉ\0��[v�p$�M��P0��-��q������{M��3�0�n��J�&E��:��L��҆s��6mS�{&�"+�bz�[�4V���P�&I8��U����K&䘱2I�%��i�<\��cu� l������U��@i4J�	&O���|��\�WR*	!X|N��F��D�$�`�F�Ƹe/ ���,-��+���O(���)eY�0�,K�?�R���ʲ��Sʲ9茲,�7GY���^Y�����'(K�<?�,�B0����^ �e	>�i�%X����c&�%X,9@�,����'�%�,�+K`���	e	,��N+K`�7KY,��	e�'��,~��X��'���?�,v/ ������Ŷ���b;3�,���b{�����>L(��秔�9茲�K���,���8�����?EY����ƟV�^[Dul[�Z������_Y���2��2I�x�űY+�������̙ӛ;��Loi���͟hv���4��xG
& ^����B	����Ƴ ��zVbE~��ؔ�r���+�6f�΢�{�>�{P�f���Iʮ6�o��䨖	r!;[$k�I��xBYkn`ڲ��()�y����a�<{ά����sf�E4϶�����.�5߉��;�_hϟ ��aѧ7*��-mZJ��ߑ��%��O�'o5��O3�&jj��� u-���ߎ�\WIJIU=��𔞻�l���D�	DG�4�a�U����?6��#AG!���65I�*����Iʘ,d�8�� Wq*��!�ۨA�4D����6t6��X贇=��F��7>h�b�T��p�:�k�q�O�NtG� ��-ٚ��IS��hj�O��J>g�s�"�Y�����ި��Y���s�'�*\0�7�Z�`.��B�Cu'<Z��̒�ɦTc£1`��TK�*Lx�����~��T{�8�q���]�9M��J$Hx|��z�ըp<ep����%0�L���@�P�
����p�9�3����������oq��>g�/��s��.Q;ǚћGt�7;ݛGTͱ��F�˙��{D��!��G�i?�= �t$�G��3��D���᜶f��PD��$�Ḹ��T��'/aU(�8��=�h#�N�q����(�#�_�Sur���mVJ�c#�L�Ww�|�>��OiĐ��<��{��yi�j���q�3�%U���:ʋ��󩢍}��c[�k���k��~b-���~ƛv�!臾-U�9��OUj���S���kT���U�9�F@5g��P���Ta�ĩ�w��Uq�-����Yf( :s$����c�m��c�I�6���ə��c�ѯc�q�:��Zs�\H�����/�]��ؔ�@B����O�B���7$j��YqC���|_H�rN�/�j��鍪�;�7���ͻ9�`���_b�~�:mƟ
IQ��k�
^�YA�cI��;��ֹ`t誳��&�.��]s��j�����5Ǡ/�v�1�K�]�<�YT�_��w2fǴ3zI5.x��^R=��b,�΅��膎7�O5;3���    ��/d�-?x��.	-F�,�����6%�wl:��~��6'艅pa�l�l�ǁ�ڶD�m]�-,e|0+6��H?��ތ�͢EoF�f��7�"����*7`��:���ću�QFoH����/��t���$_�k<��EZ�8R|��hYÛ��Y�|�+ć�f�kÄv�ʅ7,��{(�8lT��T/h�ֺd\OP�z�u���Պ���?�I�Ɗ��HuUPĢ �J!�e<�*UeA����R]t���_���|x�1�~v�n����`SfwE�&Ǯ������;�3����;��r$rO�.���g�7�Ss�6���<�2M�����"�kW�/�>Ӷd���K��=�g�~-�6&�ǟ����њ�?g5�%�jJK.��ע%��kђK����O�-Q�`Zƺ�D����`�Y� �ѥ`F�lѲK`��q<x<�t��j����?-Z�9�z��B�1���آ��`FXlъK�t;D�.ᠣo�<�-�f��f�\�Y���C+���������4ɴn)-��6�dkZe	?t.oi�%��vVe��˱�3bZ�	�yl����y�v�H/Y�ΙG��ΙG���H�[�����X��K�S-��-��n��#i�CXD�O�Q�D�����B�S%��WݥuYp�����5<�5�Z���=?D�N8g��՛pFFƢ��pF�"uk1��^5G�����,<AH�H�ɡ�c���,?����V���_�Tl,k䪔 i��L�#��M-��]�5I.�DsUǆ�6����RJ�iE&V���r�9;d-Rȱ,k�+��34���D����2�)k��E*:�3H�m�(�Y�>ߡ�̳Ej6���wx����+�"�H�f�g��Gm")�����J�(葞{��K�u=�����(=��Gz�yz>�G��H/8O/����酔��#��yzKJojR��K��d[�\:���"u${d2_�j��=2u/W�:��pS����YK7-X�p4�X���G�&��:l�s7RF��Q�6�����@�Y��T�zϲ?��4�{��!U��޳�)G��clR��=��ؤP5�{���I�j���c�B�@�9��&�-��W���i��0�ԲI�k�b_gQ ��]<urڤ�5y��I�k����i���@�9��&ů��s&�M�_�gMNR�=kr��@�Y���zϚ���6�{��$4۵g��6)�mO��6���I�T�"Ϛ���5�{�L$ժ�޳f")W��5I�j����HJS�g�DR��=k&���@�Y3��zϚ��he��ӗIR���\&I��v�'ONR��<kr���@�Y���zϚ��6�{��$ձ�޳&'����59Im����I�k�gMNRx�=kr���=�Vyf�$8{����2I�m��=y&���@�Y3��zϚ��>7�{�L$ջ�޳f"����5I�o����Hʀ�g�DR�=k&��@�Y3��m�/�g���I�p�0�C>����܏	mR7�����&%D{�c(�o�'?ԷI)qh�`���2����M*�Ck�2@~y��Sm���G���,�6�K'�����\|�:ѐ*�4�X�j8�qhz���{��b�Ɣα+��=c�D�)}�	��+K�4M�����+��rs�;Rڞ^�HI�>ne_�b��9pbЖT���:�f��x��� �ڣ���^�TmoFf�&A�)sz#:�ͨ�ۤh{3��6)�ތ�MJ`���F�ƛQ�I��ڜވ�x3>��I!����H�N4;��i����v^���<K��EY���cy�!�/�S�'��؜ At�J��]]���N�jOQ!��ϙV�Vw�x���3��ؤ�����ĉ���N�!-��� h[����/?mF��Ŧ7��w�_�6�
'���8����z&Z:��u�>"�im����*�D�?��i9-��sG$ٴ|H��B�%ۦ5�`��7i\��3�fD�F�d�:��|C��s��uڈ�Q0dпKʻ�2JJ�,g1cYvH˙�E�!u*g1c�rHaJ4;ӛ�F�bX��K����34y�f);	Rg��3�?���9�R+r�{�R���F�f�Q )�8s�pHǙs�C�5Μ� R�q���:�3�( �Tf�9G8� ��9
�!ugT�z_��cU��SZv���hw�:����Y��x��<:D�F�w)��0��*�*Z��=:��_�":�Z〉W��,�3n�\��է
_�K��!�gT�b-i�[��0)I��f�մ�
6��^��v�{c�6�QA�s�n�D^��~d��5�Q	?,��&T�f���P8s.pH!sp�C�Μ�RVp���C�Μo�R$p�|��Z�3��~����9��;$��s,4��;s>�vHvߙ�ѵC�����͈���x�!)yg���k���c+�$�ύ���VɭM��ƴяc+�,�>(���,��x�ⶢ��$ć6��J�P�m���@��;�Uu�&Ւ9�d��9��䶝9��$��%��vݴ��I:{h�g�����b$z���k��v|��9�P9$�=Y�m��6�SG�9$�=P��7쀳��r��#��"IkM�u^5�6D��ak���T3@�P��U�$�E��R%�kg�'��^;s>�uH��	���$a�����!	k'��ʐ��hv�7��U�$��p�l$	k'��g���3�>�$���|�����f��Ͷ2!�dx4rW���GjDy���_E�]J2<Ie-a�ģ��8�mI>ۙ�9�C������ݧo�uH�ڽh��C��E�o��v/�~된�{��[�$�݋��:$�^���!�o����ɇ�m�uH�ܽh��Cr��r�������s��)�A�[��TS���9+I�{�R�$i��Jɒ\����^�l�hv�7U��Ō��%Yr��do.ɓ{���Kr�ٙ�TM�C&��JU���5>�'�$@�e�Ⱦ�s�2jS��֌Þ'$�]�;��m�����\�#�,���F�f^�$E3��$�"��~s,���=<��T���M�F-Y���.ɟ{s
.ɟ{�ѢK��ޜJ�K���bFF�%�s��LoD{F�B��C��g»sI�}yl-&mN4jN��%�to����&I�{����5�n�$����~�%�soΥN.I�{s.urI�ܳ�X`�&���FuhF�<�7�
)��Ƚ�R���%�Pu#i��S�.ɖ{sn�rI�ܛs��K2�ޜ�\�1�F,�tE�)��$_>4�sI��L�Q{12�wYzO��9�����A�=9|	�͉��;�Q�ḋV�p�(���]1.I�m��>$��͹��%�t��Ɨ��7�{0��RvѼ��#<gwxPT�FG}�k��4���T��C3��O���u���=�����H�j�uT��U���'����E5�z�>P�����$�7��(������zh?�H"ߛs˘K��=�T�x� I�{�k��8l��s�<������d�7��(�d�=�'3\n�7�}�$�?4~*�HFߛs�K��ޜ�y\������̽���H��s�xZ$��9s<-����9jG2��3D��<�4"+Kg�����c;<5��$��͹��%i}o�$����9{�\�����
rIZߛ�+�%i}oN��%i}oή �����_�$�7� �k�+ ]-H.�]�����7$:��Y�H�]�1�MIN�m��zS���F��N�)��{s� qI��sݧ�)է���i��?谻(��&9���՗~N7�J5Ǩ�L�7�j3�婊Y�W�p��Mlvi��L.ɧ{ҷ�EVf�-�w���+M�Dr�ޜ�?.I�{sv��$E�������7g��K��sv��4=>��#����|������?.M��������tuA�>��ӣ��і��Y��!�MK�&�3s�͙��6�Ѥ��(��I�ã�r�^�Gs�s���h�����̹v��h�ܟ�nz4Y>�t���������9{�<���q�G��s>N�hv|�c�m��pz�p��?*EM�2��2͖�ϝ�4u>g�GS��`����U^m���Ѥ���O,<�4�g,͜�������A͜�6��:�-������x4�>    g{�G�ᓷ�y4�>:8|�T������S�����l6�h}�q�ͣ�����<����=�G�s\�G3���_�G�f������$ͯ�9�ۣy�9�r{4�>�\n�����r{$}�?��#�s޹�ɟ���=^�Jb��3sT�$�>P��O��K0���	�֦,O�!�ޘy֢�5��z$�>��a}HXt~��T�3<@����.�q�/�b��#��m-�#9��W��_�ڡ���@�3ؙ�YT�xUUq2�����ܧu[euj&�y�&iۦ���?��IF~���;I<������l�����=����x��GR��u�!���⥓�d��O�4$�?P��&�=̜4�0Pxʤ!����3&�Ԟ>iH���{7�G*�S��H��� )&�ǽ%Ϝ4��0P�tҐZ�@�	��$*Ѥ!�������.
O�4��1�yƤ!%����')|�O�]�#e���%������q�Ȳ�s�S�a�� GT���SO{�H� ��`���f�BԒ ����~��b[�Z��Αx��>%�sE�T�e����K8 '~Tu	ŏ�.� ��Q�%P?����GU�p@f�����U]���fd
�G��� D:�7 $*Wꍁ���1�"Q���̀�葨��ƀ���X���۪��
�I��(�Hg����\ɯ���
J������!~�k+ԣ_=p0�_�������)t�w�ԟ9|����Oy�`ލ<�1Q��<�2�ַ4�LT���<�5����y�l����<P7��oi`���4@t^s��D�ݸ�J�N���Hg����\ɯ��
J��,���Wz�����W ��e�,�PDT# D�??2 >��K#��cXF�a�PD�7?�7MH���z ��n5}�4�g�Wp���n���ͺ�LgbсRs���j����%���=n׫�f��a���+�����n8�V����m��2�*{ɞ�("*kb�����(A��<�ki��}g�ݞ�%����CEp�G��ܸ1)c�8v�C�Jg�q&[�+�q*�+(�8䑭B��@��0�!|l���8䐚s�=r�v[�o@�9��#`lϳ��ӊY��Qs��G��Y��"jָy �A�L���<0��[����A�	�^�,�M����Q��΁�����9�������ŀ�wj�P�<>p�]z�q!]z�p!]z�l��-^�� ��R�}|��¬;ui��:���y3F��:;���-.�l����B>�����(>��Q|��
����F�9�+��s�W��<�0��y�_a��@��(>�y��c�
&���l~���v	dK��K`[�7�]��A����j�@�DoP��%z��%@/��.q�ޠv	�+��v	�+،v	x+h�����9s: �
�]g�U��:���S�	���S,� ����W �4�E(S�|C@GA��/����l�D�ʲ�B�S��y��ݜq��`�60s�@ *:�R_�}�R�Lj�탫:����ꉆs ��gC ���)�� �y�� �z���9��p�n�x!���>�3�� (#��' T&t6��@����_�	�~ `Ġ� ҄�� �	�
V�6��,+VA  ����' N�^ ؍D� �����9��x���C�~m�>}�=4 6��Ѐۄ`�g��N��7��: ���?���uVy�h2�u�@w��]��?}����Z���#ѹ� �M�1h�D*��NƌC}��â5ڢ�(��:x �	�+z��=
t��m�m+��4j���'Sr���|@`BP�� a$R�0 ��a�{N��o�� �H`��7�r"#�������?/V�$�D8ӆV[h3�b���&��i���q��],�ƙN���"�i�mSK&������9�+<T:��Us�f�'��Z=W��޾'�iM�ۨ�� �k���}�b�����,b�����ļ��Lt`���c$ź���E�n��/��s踋WG.e@��Y �ˁ�.^�&��~�\�S�~}��i�����Ǘ��IZ͚*t�{uy�8_�J�����NT���mb�h���s���~>�5��uC�G�1Q9>"v�y�#r�(���T�)��ġ$���XA ����Hԭ �B���E ��? ��9�? 鈙�? ۈ�� ��%�hE�!��D�$�pD�`�:D�!��B�l�S� D!v���� p!v�_>!�bw�\6!��!bg�\>!� (bg�\>!�@.bg�\>!��4bg�\>!��:Do!� ADo!�@G�U�t$j�Q�@G�U�t$j�2��F��(p 5E�#���)
}D�I��G��@;��X��#j�Ό@5����H#���v#`ደ���n���Yl��C�R�W�V}���Ou��%�W�4��ҝ�ج�NO�W�
�|^�e�cO�a�=����`�V���?V�OMG�>���d�tB(�mE�4��H�?\�.U��5�"p��^S���X|���=<V�'E $�׵v6""�fEa��{��xD�۽��Y�Y�L���p�E��������z��35�q��T�o�w4ʠ[$�x��o>��	�#e_�B~ZԴM�/U���Φ����P7,e�1�4�/���7�I�{P��Vbg��eɧ����}u^�ِuT^��dt����U�h�4���Io7 6���)�n�kbg���n nD�� ��v�P���+�h������ݰ�h2�>Qs�u�]v��GD�7y�/`�y�#!��_�б�u�O��z_M�m����?W�U��J�}k�׋����C}����g�K�u����@:�s0�����|�p��Li�#Q��?�w��ٞ �#�v��|�9SeOTF@;�goَ@xD�4ef����ݭ8��G��i4Nv �hч��͢z���W<��}���HDj�t�XX�K��n�p!l黛��q�<�ɾ�}��>�^�b@�D�|�3�r�Y/[��쫧�wh��M}X���Сd�l��W�	I�« �$z�W�Es�
�HD.z����x�D�{����* $��zXR�.о�H���mH����nC��Yɪ�/��ӹ�wc^4�7?�C,彾GA$��#�j���cdV^r����7uR�a��G���K^t���ͷo���0��)_�����TL͌��W2�Z�Q��"��w�G�Y��Z� �jE4A����9�X����ٗR"�j#3R"�j�.�D���P"{�1� %�V�� %�6�� %R�6z�AгQi�khDS>��p�>-�Dd煔�����G��*(N)YE���UP��*Y����UT��!UT��YTg�w՜��(�:u�n�c�]4˔����n��t:�f:-aR�D�e^���P��j���7eɴ�O��0%���R����������

Z
9�ȞkF��ʥ�"��|MaE�H��\�^�x�}x\|�v����9j����+!H��sW�D�4oO(F�\ӱHM�`��45�Kü�V$�ę;�߭Dj�yS������������yTS�̣F�n��̑F�t���{�ۥe�3�y��d�i�\�m2�e42���>=�mJ�0�9��$�_~X>7��<���(�Fi�5ŹK���a]Zf'M��1;i&���I�6�t�N��I�cvҬP*sRg��}����<�8�*3W���}��!���/p]D阽:���^����f��k�`Yf��Z���O������%�=�k��&���{�!�3�i�e��y�sl����z:����Ù;dw�������a���q���̗�%_l����%K�g��,�z�����u�ٿjVBU�T�]�+�;|IQ�i5o��9Us�F�S;�Oz�}`v휓���u�f�	�Ŏ��-�2����
Sd>���]=o�o���3��IRE�M�z/̛���e`���^42[zM/����E濠�7"s^���9,d�&,#�[�؂��ߵ��ΰ���~n���r��T 2��r�cd���-2�    Mr��:U����dV��@����Ք%sag�������Gv5fBMQ�d&������g����[2�řv�*�����W���)n͟"���{��tJ���S8u���;	R�I������Lm^Z��e�6����m��
��2����j�zzQ?LkM�%��k�����b���/��b����R��6�,�}�惥!�?=Xڀ�gq�iAZPѿ�5��S��Mq���M�)�4�B�6E�ʭ�)����������I���P̛�Hb�B�-6Ew;c�錹,osla�S�M��s�-�)�9.{�l�a��Q6I2S��+�$�K�l�M�̳cv�&If�1�f�$s��}�Ŕa�b���$���ݳ5��$9`m�dMFQ$3E�Fb�is�dmA1��"���2S$s��(���8�6E2�*&��)#D�bgE�d���g�Q��K��CQ�l:F�\�yH�h!E2)�-�H桨z��CQ�>��f�I�bʰ��k�'�B��Od�H�cd�5����>����>���b�,E��Y]K�Ej�
�;�Ȟkń]]�|��k2�cs`u��=�d
����!u>���C�>��4}/F����hp>���C������G6gt��t7Y�W��+�Ԣ>�����%�����`�Q�����Ƞ�Q�����Ȱ�Q�����i����i���(����WO�<.6�qt������x�[��S7.	No~8
�Z�nx��8�\N�ެwɞ4�ZL�1�b5�B�XŤ�%V9)�؈UM
16bՓB��جI!FFl�#%V5)�P�UO
1\b�&�;���B��Xդ#'V5)Ġ�0)�X�7)�H�5)T0�bGM
���Q�B#/vԤP���5)T0�bGM
���Q�B�-vԤP�x��L
��XͤP����L
�XͤP����L
��XͤP����L
��XͤP����$�#!V��XM�[0�a5�o�Ї�$�CV���sXͤP�8��L
�s8E�W0���3������
�)�&�+�pڌ�`���d|�.3�+Yp���` �i3�������̌�`��i2��Q���
F	\~�W0f�Fe|�	n\��(���1���e|�K�qn\��H���1���e|�}�q�"N��1(�T�"N��1(�T�"N��1(�T�"N��1(�T�"N��1(�T�"N��1(�T�"N��1(�T�"N��1(�T�"�~��=��u2���]x)�8�w�#�{Y�zA�8�+���H�(�8�;EGy�I�)�8�+�ĥH�(���"���bO\�T"��=q)�8�+�N��Q�����8�;ERi��`�W�PK��C
�U0��}2y��d���`����ɨ�W�I��C��2)�yH�W&E2)�ʤH�!�@��+�wx�����YbP0��5H�`��k�t������$�Vgz�����v�yl*��~�������V�Q��~xZ����p��c��5T>O2�h��TR$3�*�b�ë�/F9�*�b\ë�/�/�&��1J�5�׌�*3���=�$�
����m�(A�M��S��`���_�����7gR�(q��7�ݵ��_4��o�s�����&�ž>'�yK~2q���n�����LbH2R����v��L��S��xm�$};�e�A.b��Q��)(Bl,"��a����Q�7?��7�v�^l�s�&��U��w��=��E�"��2�F��ŝ1trfqga��Y���٪�ѱ���Q�hU���ЕZ�(re�bDEDrZ#,�4�U1�"�������3�dB�162���!�����Q۪���V��]�U1$Q�*ƁD$�U1$JZcD"�ߪ9
�4c�(���E�\k�`�(��E�\y�` )���!�`��3b�`�(���DACtf��Y�a"ke��D=�ʬM�BW�2�Pr����+3>%J�̰��[�����3���+3�%�c��X��gX��1���Y{q��2j"�ce�Di��w�|+34�y��[p#se��Dt����+3�'BW�2r��i{�+3&(J��P��[�ĠY�0c 1t��de�Et���+3)BW�2#��s6���b�H��i�pí�X��[�Р63F@C�`08*�c�� ��gX��T���z��(��(���X�QYQbe�6���!ܠ�3�pC�`0�+�c��H��gX��^�����(�����X�cQ`e�Ep��i�P�e��r��8�ʆ�gie�质�l(�n��ceC�v� J���ܭH��eޭR����q艰I�6E�l(Ҏ�reCv�R�l(ێ����h;^7W6wǼ\�P��ʆ��8<W6�����$\� �P���+J���E�1^�P��;�l(��y�ʆ��8`^�P���+ʼ��ye�(x~!��C�D_-�E���r�)��=�"}a��/J�∉{�ҧ b����g~u��Cܩ(P���j�'��S��O,�[�>��V�U���U��RXy&��rJ#���#vڲ���a��B��Fq��0��:�>����{06��\�g��;4a�'b=7�!L�*��=	��v��|�.>>�K&��c])�ڬw���7�&�l���Zy�q`LE��^�T�K?�P�������3�c�2��b�\o�<vu�Rv�]���OT�H�`әT;`�un�!�UT�Ka`әt o������OM+��9!�8��L��w����$��v��9�,\��j�����w��y���ѭ�9�����ڶ��}�&o��S����u�x�܌o��kߡ�G����İ\��b��a�{��@*6}�/�$���H���R����84��S�hd�>#����UkƃC����`GEY��0���b
k)
*�00�f��	`Ͷ4�&�=i&��$ev������s�S���Os�S��z�v�7��������������P�@�s$���6�)`
[�L<��1���S9�c��r��O-�:{�Տ��P"2��q����,:��MY�͹�SC9ͦn�P>�NK0�����uwZ����NKp��p��5�X	��r6%xF��ٔ���1���T�:��?��Uޢ��g4����k���;=�LԴ;=�LԜw`���������3Qsҁ��z&j�9��S�D�vz꒨9��NO}5����%Qs��-�%n��l�q��&�.�����S}�u�[�y�:e�O黣O	��*�dڻ��9���z������X�O,��o��j��9O���Z/�Lf�ۊ���{��������g�T�y=�Ɋ-���k�v^n���MU���c���윝3���윝�k�I��{=��^��w�/�46<�F�(pβ�������SuY�)#��|Uϴ<��6MkL����A�2�F���h��f��:Ҵ���?-j�&���ng�K)�x7��O��jc�i2_.Sf�3��kН�}×%�柛���:��6��o՟Wy?}5�������f��v������͠�m���܎���^�n�>�h�cѫ��KԬ��@[��4;�e ��@Zz����g-��l8k��(Ȭv҇e- �L�8 d-`�� O2Q�D��a-����>���#l�@���WD��i��h0a� z��b�8�,��z�G]���Q@>bg�A�T�t�HM��Kz�3ޭ.D�-}'�h��8y�U�}�������X�K���J9�l+goj����M��������Wm�Wu��«@<$Z�U =ܫ�E��FU ��\�*P���*����*��U�*"��* ��9�P�VЫN�6�.=�m@eb��E�}�e��5 f$rȋT}~��FD=
`�V�c�7=�ۉ^r����7G���hXɋn�޿����&�4�P��`���
���н�!�R��Ŵ0���H����;��#"
� �h�A I�p� (����=V$��~$R�I�\)���G-p%�=�q@�$z�A2(Uq��|f�h�G�A�)?x��Cd����Yi
�:D #   V�j��UP��p���bɁCd�����ꫯ�ѻ�      �(   �  x���r�6F�������!@$�*�ǣ��R$�M�ɻW4kP�걛��`y���H;������ާ?���������7ۏWw���q�w��_����~����7=��tX�����M��^/\0�-��r&��܂Ϲ�܂��c�~����5�����2�y��`�[0�-X�V�kS�����/?_w=s��:h��g�����?=��ݩ�C�_����}__�����N_���t������W�}�`
l:\Ge�3�]g⯣�u����De��\�`�S���p�NS��q���:�����(s3����^�^f/v�S]O��?���G_[t�����K����ӗ��t��u���w���܂Qn��:�S�8?U}���Q���h���q�}�_���w����qP�#�0Q��;*�sw��Ք�Us��A������G���H�v9��x��E�G�:<�Xy�*��\��~m�F��֗I�6�tyL���~m{��km>���K2�4M�%vO����'MStI�ݓ�)�d���4M����GK��0?s��L���r�v?�����ɨ2>u��?�+7����o���(s��aTs��aT�6��({��at&���a�ʇ��EB�љ��:t�C�m_�}���!��.��g!��M�AHwy�yFү|���#Cy΋ӏ�S��7��|ݝ�z�c����ɪ���	���祴Uf��ad�����a��p�~����b3x��V��O�`M�"X�U o=W��z��"X�U ]�5�<��%��5A@׳��GԳ����&��zn��1�,aE�$�	� ��[�yB=KX,	j�*��g=O�g	+�%AMP�г.��{�Y`IPTt=+�yF=KX,	j�*��g=/�g	+�%AMP��L���z��"X�U ]�t�g	+�%AMP��L���,aE�$�	� �^�A���Q�j��t+�Q��dr0�"q߷րy@f	��&2����&cIdz���&�Ed>���*�<&��Ɉ��ެ�<!��Ƀ>2O�Y�yJf	��ud�zs	�{2K�<t#�7W`��Y����g�\�yNf	5A@g�� ��ɣ72/��fؒ�j�*��L3lEf	5A@g��@f	5A�����&����
�3�ېYBMPЙi�}&����
�3�ےY�d8��[o��#��Ɉ�w�L3lOf	5A@g���%�U ��f�#�%�U ��f��d�PTtf�a_�,�&�x0�a_�,�&���4Þ�,a�!$2��C3L�YBMPЙi��d�PTtf�a��j�*�s��7������_�[�|p����[[B�����W[A����CT[C�����Pk�~L����m�~B����m�~J��ᢵPO���P?�z����9���ni�-�އnK�oI�>:[�+�����{�zc-��5��0ji�m��GJK�oK�>�Y�;�?�,[���S�����{���qd��wb��rHk�/ȭH�s0�N���h��}�Z��%L��<���C2K��y���#2K�<"�� ��j��c2K�<B"�؛�'d�0y�D�7k0O�,a�؊�So.�<#���+2ϼ���&���<���2K�<$#�i���,a�x��+o��Df	��=2���<��p��$����ƭH޶Q��m���T�C��~A��K�{T�����/����|}�k�_���7T����T����?Q�q�)S?�a��r��Ê���K����dvp0�"s�7�Z��RK��zpR+PI-a2=D��I�A="�����G'u	�1�%L�H=>�+POH-a2@D��I]�zJj	�	"ROOj�{RK�|f���'u��%L��H=;�[P�I-a��󓚦ق�&��H��ꆦْ�&O�H�<�i��H-a2;E��IM�lMj	�gs�^��4�6��0y�G��������� �      w(      x������ � �      �(   �   x�MPAn� <;��J�nӿTB@��*ȘC~_{shn�؞'>����^F�H�P��xh=�bd0OiR̬0R����`��܆e#_�����_�8��W-�0�-UO�[��ڷT�F?���aTø$N%�4KS�����`���5��3!L*R8�������-5��fEZ�P޶zX�,=*��<DL��"D��ra��Z�]xێ�ިI���%0�Yr�`波+�#l�SD���a�Bd�4?�0�]�'      �(   6   x�+-ʉ/K-�L��t��Q����Vp�HM�N-RH��)R)��9���\1z\\\ ��H      �(      x������ � �      �*      x�3�4B�?�4�=... ��      u(   (  x��WQO7~��#^ 	6I��EE*IJ�u�ݝ�u񮷶��S���o�]�H=�"!{�����q�]���T>��[r���u���'a�l�ѯ5�����5*8}/ʺ����z�j��ٹ6Lg���<.:.Y/Eb�t��*�����Ӂ�Ϲ�|��qgT�U�����qn��ε��jK���#�ύ���E��(L����X�*�Ua8W}����3��æ`�'��2����ڶgt������"�"�JQ_6�J�ņ�J�X���	�v�G�T��r˹��uy(����	�j�V��$H�/��2=Ok-�Xg1؎��T�<�8����Mt�>��t�x��}���ԡJ.l�~��,����'�V;��uj�J)x����(�f)��3�� M�<W�	��`�'/E�m�r|�}�]�n�N_j)n��l�/��z�t>��38�K���m˻�y�/��VJ��z��/5s#<'W<���^����}���"1D����ŝl�m�o
t�'���N^�f�_�^�%U��UB@�F�>�xqzB��R�Ꮈ���v�Dgiy�Ld#��� �\�A�E:����J� �[�9��Z�\i@��%��Զ�Q89P�����9 �XYw����2��e�r�/�/Lb\��kp<�KN�pyбD긴Mg8r������X�Ѷ�Y��<+W�T�{:��@�����oH�R���Q&X2���6ŋ�A�t��}�0J�K=�K����>	�j`��R#�`Xr�*<|� >7ʇ|�[���0�n �Ec}�sD�^��*I�΁�Ƽ���.��!ot��]���c<�PË"��o���P�2��C9v��R����:(�]y�V
�W�(�,s�0/἟��t0�wF{��/���~Ə���^�8Wi�:�$��{1�1�b)9�
��0����r�)��~	�`ק�F��X/����pi�} Y{C�X'ß��S���MxZ�PӈL+(1a�[�#�2�ɯAz,�Aqf]5�Τ�u��8�r�muD?%Q��x%��Ȁ��d�*�VK�s`��2@؀���K)��$~�j��z���R~!]�b�Z{��Qa��t�E:�ٖ��a�K�]_Hm��v�Vx��x'�8{8Me "��7�9n!@�P����f79�N�µ��r�¥�8m�cj7BǪ���Kx��(����*�~��%�)8�i8�f�ڊN��a��u��ou�Z�Q�5��[J���[�y����"�I�>=&��1���)5)W��e�t]?������M� �Ö`�,"�?�7���Vr�x��y�P�Ir�n��S)+��5R@��X^r�+��$�vzm�x�����7sg��J����xO��I�|�"��bs�р����MN���M����&�M����I/�H@�s�a�2
r:9����x{(c\Ry�F�u&AX'N~��B�w�D9O������doʭF�*�
����V��N��qWh4L8RdWc��6#)�G#ʶ�Q���!����\�X�f��\�F���l:����@      �(      x������ � �      �(   '   x�3�4���+��4V �Ŝ\F�f3��W� �Y
�      �*       x�3�,�L��CG�X� ������� �2x      �*   z   x�3�tIMK,�)�4�30�J��a"�A��0�`	�e��Y���_��Z�YT�a��`���s��uJM�/J�J-,M-.�/���e�Za�阓�ZX����������� ��F      �(   �   x�m�A�@�ϳ�£�� ����%�L�.�$�y�_�jJH]�ͼ��b]W@�ۛ�]�UiO�r��`��:;�yd/2�2�"�Y�%d��`���:��:��1Oު!��d� b��	B�{��(=���컄���W��j����U2�=���SU�Ptq
T0�:��]���~��N)���d�      �(      x������ � �      t+      x������ � �      t(   �   x���]��0�����({�J�Ң����/Iw�J[�o��g@�{m�h��X����OR � �����g�7�
a�m�[��ϐ���iiő8vʠ9����>��I��
ac
�=���m���>��<|�m�/�:��!�k��Α����n��(�^��$���!v1�r�_�1+	);L1�Y祙X��8��i����      �(   �  x�m��r7��WO�'h��]��q�L&v�����q퍣�,���I;}����ԗ�O.���gۧ��8N������/V^i��0���w������F��� ���W瀓���{���o��YaC�-F���-��0[S��=�axy�u;l�bq&��r�([MF��>(�:��w�w+7e�6e�@KG)�L�W~4�׵�/7��vn����ąXq���O��U��'��~�x2̫ό�����f��8�iQ�'GYF���$��Ώ;�\�7�g��Ǝҙ�&�|&��Q>й���l���0��E�jq4�+v��cž���`�}V�ӊS��`�'���y������x=;\o����z����r���@��p}��+ 8v����`o	w�O��������s��K�%�Oc�%����}�CYM��w��h��v�]�FS4,�'��<��a�x6,�g��9p�0;^�<��)������1fo��F�k��Qr4e�A'��2��Q�x�j;g��0֖�U_�Q+�hX��K��}�9�����8�<�s��'Òg����Ǜ��p�<[�uܛ�U.�Q�G�e.��Ƕ���8�$��p;��ڹ�h�Υ���\�NF%@����)�d��M)&�ڍ�q��ʝq ���s�Q��dP����������qT��'�2��ƻn��\����N�\3�1H�3.iS�K�ʃq�Wy�l���+G�8k��|�����(���mm\Ҡ<+�=u��8�WN�����ij�r45�ih���(���x4�ק�d��O�S�y4V>�t6�������3!��q����{{u��ǱP>�x�{����q�Wy4.�*O�%^�S�9^�q�W9-���n���
0���@������.-��#p</)�G7?-����[���6ߣa�>��a��'a�s³a-t4��xd��=)��=�O�qX���"�H-���/q7P�G
U�<�ڑ�Eʘ�azk��/���Q�I����]�38͂��v5Y�Iќ�v��o��Ƥ��vy6_G�b`NG�6����I��w�GSp�4+��}\>>/&EH^�|'%H������zҴ��A�t49��=�=Xn����t�|����{-�4C}|��A�&)���L��aB�i�j���(�����t��h���l���xP^{O��|X��T$�x)�9���-W�����tuvww�怙���#��V�y�hЂ�{љ(]�;�~���EG��(���x�<*�:�BH&`�@�;�<�.��[L�0zi�ë���0����bq�y��:=7�C}�y�R,���O_W�8��˃qIш��f��w����˛oGKf�p�i���0��m�d�w�X(�C��i{�<������(��xp?|�=�KQ�4�5̏�GĀ���ɸ��1h����K;�T��4���p�
��e��F�p^�RT���K%��맋n���4*�И�
T���q6ew�wN��0�.�,w��E�5l*��h��9p�y\l=�!bwV!��9U���v��H�q�2S5A7�_��'������K��Qׇ��0��V2��:�
��Y��s������qX�U����P�Xh��+����qX@RC���B�:Z�G��|T�� H`�;Al�P�Nf�,�N�G���pll ��u��P�F>���1t��P!66�Ę:Al� #���Ո/��v>��ۧ�*�N��GR�(�<�&6�%�8,�B'��w�ϯ��,�Rǥ/�����'͝ &��TÎ��CU��Ga�l�3��k@�����4��`yҬ��3r�}ia�xL�q�_iHc�����|���ڷ��85Q:M
�f*�(;h43����"X����i43Al�.�p�l�]��Lhl2�m?��!�s������|ۀ��K�؀��ь��6 Q�5��|�D�Bl5Mdʱ��H�]��w�F2Z��$���۠�L����i�Z��,H�      �(      x��[K��Ȳ^˿B��D�A���%��N�f�����vd�HrC�����J���l:�YYU��ˬ�8�q��n��~�(�]��W:��u~X��~�m�۲*V6�L~�-��Z�~W웾XwEݕ�.,���X%A���bӗM�J�#�?��Pl�۲خ���e�eG�7����+�Uy����"�4U�
6`�>V})t�5�t�6?��	n@��4h���u���*v�8�.��Z�IP���4�[�ipKΧ����u����#U8���*�G��eU|-o�"�ɻ"<�5}��:ܕ�p_l���qxh��/�1�����.u�ˇ.{��7M���'3�������,�D�L>�͗z�D��+�����Jq�L�2�t�^6,j0�4}�U�ɱ���0����1�0~�p�6x˩6���qxS����ڲ�WZ�\+mp�`����6��Z��m𲬠���y>.َ��o�m��w��q?L�A�.�B�L��q�c��$x���mߖ[h��:���]y73�����P��9@��*ܖݧ���F�!7y�}��Ff[��LcL`����+��L���f��`e��A��K������֕��UɉIZ��J�vY�X��CK3K�gU��������]�qhq�yZcJ���C�a~H%Xk�7צ���|sm����9:��/��)d��'*,�_VN��� ���|Y`B�Đ6m���M&()��i�5TI�>[�!�0����|u.��f�����Ҳy�Ypr;��3��$� .�MvͱކW�0���J�Nh�&{�h��h11�z��x��`�ߓ#�}��,���:[o�p����m��M���UB���4²�[%<��3�G���8�~��*b}>W��,��ab�%�kIG14Q��`��6�m�=��ܕ5tj�_?�ڗ��r�:�ۏĊ
�mj����V�0���C^��`��qy_�W5>m���*��2^qS:����e�r���2jkL7���c!����෦�*�V����*3����2��xvd��.x��Hׄ�pOY�sp�9�����,c�v0�,����HV���H�w���.cW57��,;a$�����Vu��v��<x��żpk��V����݅������S�G�8`t@q$*�tAq�r�3oG���nH� ��!�!�{K҃hi!�X���� p;�#4��o�΃�K>�1�&V����d�b��1���������@����C)zeE�հ�.Գ6/+�Ng���J V�A`��7�����Q7����{�w�!��P�0-V�5�3ŽƢ~��o�7�ܚێ���Kpb�b��S@��à��":�PHL�Y�� ;�ι���Q��IڎZ�4���'�P��|�-���ł���*�Ai��o�}=��}��	v�b�C�oE�a�� �����K�3�Xs���ɥ{�ܛϣ/�7�&%|�.��y��+�֙����r��fD���=Z�Mc�a��pG������S���5���5m/!E$0!d�MP�{m�/8���ؠ"�C��e���Y]��؊���7���#Ќ��,�#|��Im�(��s��4tkE]���a�#�3:9��?�N�p���#����.�^�U=��� ��x�ۑ/��F���|�6��GG�uUn)�! ���a�y[ԛ$<D!��5��s� '�`%gNp��_)9s����D,+�؟D,+��'˚\;P�.
�Q�<I�"jx�m�?�΀SU�a���<IX�;D��DTq�r2~T�f�4l����HrZ+��72�ZS�^�=Ai!���C1������xB���2D�jR�"\��HHG�I�n��?�������>��[��q����l9EY/�2����2U؀GO��ޘJ��8c���>��3���G����1~�̀�����`%p3#˯����`�L4$��+B�u��v��9��h
���I78�Q�6���Dk`��ӄ6��؁yh=�3�D�fGy�5��\Y��LR�9�bK3�!R�+ҍb+q`��4�~�� ���؉�HG=�
��&AK���K'F�"{f�8��&5�Wٛh9�;ò���X�+=Y��a������n��>��g��>��g(�;���P�G���D�vC_��O�}OZ5<��{��*�����#`P�� �)�JLq#+Wt`����4$(EH{���F�qlO���4�X�7w��T�%o1�fioll��#�LӴ>�{
X���� ��Ef��(��r��U+��z̑��������l�-����dIFn'�1�V�H�!�Gc�:��l�� ��l7b7��Q���ր�
�Y�c��g���0�`��X4�hq6�ɗ�(@q?#
PV܏C��S�c�����n���^�H����rw^�x��8G0��I�����&Ni\���E_��JaoN�p�=�
_3[B��>oK�ceE?/�����g�@N�;��c.��X��|z��ʱ���.+"Ի\0�r�����̿5 ��@~( ��a`�A��<D��l�џN���t�_�/�wq�k����l��̃�	��H�������n#� ��Tn��UB=��e *�r+������ڹ���L��۹���hO`hS�@( .+���<)�^d�*e��|�CS=Æ v����X����6V��I5��AZ�t1f
ҩ�s֪�ŁJ�{��E�a��R���x�����6���?AC�X����s�;c|�^8�ހ��P�d�v��E��I�9�㺀jY��9H��%���&��%vd��9ͭUFTl���1�4˻�1���45�͆'��#�g���vQs�h �@�(�#9�1��>n�y^��hz|��ڲ�*ⱎ�Ė�'ș�]?X�$Ũ�!j�Qۜ\�h`�[�I�E��H���rG�P��1�3���C��^s��u��_'P��3Z�i�MQA��bne�;$3�2�zI+�Иsw��JCOwtv�P��)z9�g{���D�g{��-B���EAr�w����`bGr�; �;2��i�)����>4l�{�Y�%9� �g2{�ߊ̼w�}�,g�;Ĝ��w���,n�4���'{�4k#�1�=��F��g.�RY1��ȴTW�tdX3��(#~ȝY�\��ϩEB3^if��Z��So-@ }�<d�yrc�cM:�c)���:��}��=���u���֏ D� !��	��鏥	��k��C�x1�-3��"	;��X,��XU�š�a_[qf�����ҋ�Y[qi���f-���1]�v���ڱt�>�$m֎��e����eK�EڬY���f-��M1j8��n���6k@�;���f�SN�a����Wt"Nl�Wk���Ξ��:����i�N�6��f���l4�}�Ї�Vc�/�z����f-Rv:eQˎ�AKA��Q�>$a8ǖ�&��b �H��߱rY=�c��چ�����S�&A��Ͳ�P�E3q�9^,On��iy4�M�i��N���o�=\v�@��c��
rb�
��;�y�i%|�ʑ���u���¿�vO�.k���B����	����EY\gL��2�m{�&j�*�)���H�*<-ۛ��y�.&e�M1�XO�\�q�94��Nێ��D��J&��T%�W�"�$L3�5qp��18�-�E\�k[��4� ~-ZG���pIL2�ֱ�q�H�h��V�&���Z����FhP�m��B#�$����	�$Z'B'AJ:�֩�)/�]�a�("���~�U�����(zK��gyU��(�B0p:�6���62����-��[6~x)Ag���Lt�N�g����3A4��Y��w�����+s�-���k�m��tm��3�P7��_t��C���;h;y�Q��8{Q�6��2;G9�yg�(g4��ꀯ�v����D�{��z�F�Y���l:�78:��b}�`�F��^$�F�,6]���ÎI�1D��O7��CDayE�uC,n�F`�ͦ`q9Tqcظ
�J�
 �  �M��W@DD`g{C��r���eKl7lyy����������ESl6�mї�~.����ջG+����̻�V@��rNx��=[r�M8��7��WNӠۼ�Ѫ��|�5B%��$��,ls�BL��S�^U>w�L�$��[��x��M��=m���`���g=5�W�E8��v�Q�*?����6TqW�훶�s�S٦W�m�/�]6!dрyǆ��_���;Jˠ+�s9�=TPTpl���Yb�I ���x�G��˦*�>�W�jr�h���I�N�l�Q􏙋�ey��UkZtW�.����f4���l��I���,��CCa ���3�
�[��5�N��������;ά8�0h�	P���mq��І��fn�i���o�;���Ye���69x��I>���Jț��k��q�σre�'�<���?���V��h&�T��w��G�? �60����uP��~	X������|г渣�keů����l �8�c�0 I�g%J����^��5�%j=y<֡� M�
�^ z������*�H1bMR��|�z�԰���r���-�xwk ��� �?��~�~���U��ґ�x)�%=N�iڭXf�Z���Xˁ9�,%c-�fm[{9��i�l@'��Y�=�6b:�!1��Ё��*�| ���N�}���҉U|�����b��k��	��z.ex�',�e,OC��W�ifn�nYy]�F8k��0��S����]~�1�ӧ��Ƽrz1:o���Fgwf�hٵMs_<��3���k����&o��I�s.4ȇ̘�*��[y��|rh⁴�$��x�������k���	Ҝ\��h�]<��T>B[|&>:i������7ܨ]�V�&%3}�g�����j�7�q��8���!�4��X��O*DίY����m���5��c-���$x�Z�U�h������{��6�R3_"�v�t�Wfn�C�r*	Oe�ȹ$<��#zt�T�Ԡ\�X7����J
����g�dRi���W�l֖�~�T7�g!�I�-��'�PZ ���7_G!0Ykb�rW��uvOV�L��O}x_>5<_4$�.X��-x|@�._�b7�b+��݈��T�Q��6�a�mm�H7=>���J��/N���s�9فl��y م�59��i�P��DxS��z�z�lZ/=s�<̡�r�'�*���k�A�&��۳%��D~G�/�y�=�B+�^<��O�=���d�ϻ�(����$�$$s��&, '�4+�Xɳ ¦�����k����Z��G+`�������sP��24_���~<T�W���ߐ2�æ���^���ߗ��79�VJ?73���e�d�I	l-K�XS����+P���z�V XEO����k� -�#���q��nsؓ<�M�+��-���%�}Q2�2)���K�V�1S�wK�N� 's$s�81�����u0�������N?*����D�"���K�.�����>\�8��蟕X��1,K`����"�Fְ�X6{��.f�5c���K�'N��@N�k 7[���� w[dx�7[	��@�V���38$v1?�C2FSh��3�"F"9b$tQ�s�_JT���2�S���U9�W�d��N�&c���_V����,�      �(   j   x�s��L,�LLN��
v�L�L*��
��L�.��LLJ |=#88�S�,� ��4�D��?P�ru��̂s��}9s�<���*N._7�Ҳ�J ;F��� ;�%�      �(      x�3��M,J62��urV02����� =��      �(      x����r�H� �������Re�N��I��*��v,WuOļ@$$�M,����y�ߘ��k�%g]3W& J�]U��kwl�HyY�r�/�d�\��L��ArVnvU�J���y�>n�c��uq�ɗ��m���Ӳ��6ůٮ(7����U/�����J�E����=~OoT�����������g�\��%<������.+p�b�^�j�����(\e�r�ov�^?Jv�%��������(�|+�c%���:��Xt-o//\�Ȯi�<�vy�m��b�^����z�~��M�-p�����s �uV�WyU��L�,�>.x��d �rŃ1�ӝ�����ީ�,��A	�&��nӬ�/`�����-ӣ��o���?8�å�T�/����t�P˫ba7@�	��>nR~�������[x��S�oֵn8>�.�Uz��G��bU.>�1��1M^���ɫ|s��N�h���*_H���@�e��5l�*��3]`y������uxR鶬鵚1���m��t�C��f��.��.���������U����E����g��
�N�.�ͦ��o��V�ӣ������!B�������Qx�k���~�+����7�叮�`W�f#�@�
�
F@LYo��-/��C�n��`�z�^�˫�c�����n��������?���-��b�ǩ /��y����C��C�%�ok�G��Y^/�bK'@��z'?䛼��_�J��l��F��Cƀ�f�|�Qގ��naՈ�p04��: l�U�a=�z���;lA�l{j�=?��m~QV��N�=�[�:r�Dxxwx�!��B��l{��7�@Y��K�O.�!��-wH���/�+�|U�)�Ad��k�l�]ћ�v_�>}͘8�ɫ�ʪ[\��+$Ei�E�����Θ	
D�����(�9[K~�����:��lw���:?�����v���]�pq+�Gn�f� ֹ��ڲ\�	�@A���F�ͣ�W���:&Dw��U��v�Y���WV����B�L��bU R�~�DX�g�/�}���5G�P�|��C��v�§��Y���s<w5��3�$o2�4O�-�Ud
��E������O�J�<E��(�ҟ�\�mt.s�n�����M[Ww��*�,n���-���'ë�oA����$%���l�}a>\7D6ĶlU�x2yV���W^Q��X/���)n��.� �D��h!�g��g}[��U�7��0Z	��;LңC�u�����D��m�R^�W�qMb^c�'��
�������<.���E'��D���?����.�����Y�)\��*?y���\QRE݅h/����rCԟx-�
�& *ӓVI��ځ���}��(�*��w@/2���e�Q�w�#(j?}s]�2�"A�/ �2�3D^«"'A$�@rX�{B�k�(�LuU®pH�R<�.6����d��&+V�SG�� �.��.H@Z�uᢁ��BY@�'���#ܵ���5�23j��^�� ��@��5^����;�DW�$�I�E�E����t�g \����6�.2X-�%�XL��a^�@J��B�����I(�2�	���Ze8�B�s��P�b���c�Y��B�J+-O\�p7@���G��a��ʊ��q�ț[����w�֗�|Sz� ��тH&9�N�������a r��x�)t>@�8e��?��G���zC��{ c���cQ�w�[���}����Y*�\U�����������M�V~N�F*S0r�vVYN��h ��O�4��mo�mCmr1�Ч��h(��*�W�p��&��:Wf�RT��������U^�jq�'�]q�'��!��J��� ���μƭ0��)d����W��-�Ak��>�xC"i4tZ^e���@��j���Wɸ�7��'���X��2 �����������R\�a{�b�G ���p�܅�]�����є������56��x8�/;�lE�>JO�w�� D�Jͦ7:��HdN��Z��M�<z���9�c&$�A�@�&[��P$�H���p���W
�4%.,�jb �jc1��(�!�@����<J��Y�r4��+��7Lۀ�_����Z��IH���o@-�s�+A���g���V�����l�n�L���ƣ��j���0v�,��T ޡ�6F������o�4C"�����#�6��w�n�3M���A�B�����҃��|Mhtz�r, ��[y4H^�kA>��HЬN}���̣0^ˋ�(r|�������x�5HM�\0"_oW%�\�@{O��^�-b}Q���b��- t���e�f�l�uy)1R���w�=Q����p�"�h��+a�H�Z��B�X)A���$KRq�Z�6Hek�8>[$��LJp�W$,�`�����,��>�y�1���j�[e�:*��``�:
�w��ca��@}��#h$Xd�ݾ��]rBVk�#��/���qQ��r�ջ���:��J�ֆ��Pz_���\,�)/�ſ�EC�����l9%���ט����b�ӊ�������F��B&X��-F���>C��e��	����@�˳c�^!��`�V2M�s��c�F�c4�'#��5_�>�;������~��i���e���
��i����R�t5�@ڣU� ��Uퟮ��"�u���a��}	nD�F�= �t��
x��w�ˮE|h%�>N
6��֊���8�M��Hl�����J[�y�mAr�-��bm��z������kQw�j���Ǫ�z7Y;jU����[޽N��3�Ѳ��6l�~q����v�i��������2�Ԉ��ٳh'Á���#�r��7S2�#/�@z��[��NvzU����sm���Of�s��9��M
L�B@%��5 ��\�-Q�H5��̒��ϋ|�s��Ⰹ�rEB���c������:FZ���������	�	A>�c�r�Ф�#~�[�
Yn7����CY�m<H^6�A�a���Ƒ�|ߴ�x]>߈[���;�����d4S��cB�V�/A�+ȅF>���6�ܯR2d����,E((�}���(D�Q��M���KV����3����|Y쉃�b�QQ��qng��Ԟ�@z�;bs�=�JmLho����	��4��#+��������t	to79�-�7��EPg�4���lhrFtEj�#w1������?��[$�E�)�}�����l8B}�$k�W�6�G�/R����FV��r��&3<̗~پ&A�p.�2j�<�UI�_AXo�`�䰍ed����S0�,�}�W�;+��Q�b�.!�#��wģ�Ȟ�v�������U��x�n��]q��Cڍ��tq�LN���	�F�丹qu����q�B0fA]ÙМ�2��dG�)�f���Fb���S���B�ɧC�ƁX�w<IHb~S�����	�G���cgUM�R�3oY��g��8�D�`�V�O]0�(���D9 kÏ�m�־��ݟ�����c�Z��hrh*�I�����1��Pe#��'Dpk6
�z�_��м�G��GO�=:���`;;�|A�a�t��t��=�@}h}�2W�o�(��A���� b�t�=��p� ��<s���ѽ/9�_����2.� �Ս~l�c��7���kk �L0eE1��j���Ԍq������j���8��RP�P���$�Qp�4�)ea^D�#�6\��u�񃾔�bK~[����� �1]������`s� ��R_���M�o7���	���߄�(1��a7��y���ǃ�I������x�sD/7���X\��e���1���'WG�P8��h�fi��8��h�@��7�gx,E�`�Wt����@��,W�����-r��nxs�@���ÞL��Hw�aqb���R\=�x�.@�k�uAľ�$���u��aU�IG�M�`�6/��@����"44�x-���*a���|'�m��w���}U�Gt�fԜMk��е��.@�4.+������C�gS)�α��    ���9�(�(Vۜ:������%�ҷ��l?EW2�-N�m��A������ ���}Z���|�x���2W]�Y]����vH����(���*c���pC|��,BL�ՙ���]E�2좇8�����98)}�v��Cd)��t�ɝ�b�ߏ�j&���Ɲ���9�6��'�?V9"��z�,�v[�Tz����
��Ex����陸�V�YS\�{���&�.2��h*�:��6�H�W�yAz`F�6s�գ7�^���{�y!��;�G��a��vS໢���@��y|���T�`��W~��B��Æ( /����r(�DG0/��o�i�:�	ƪQ�����(���c�!�dʁ��s�)����u�Z�t��`��Ǘ=�Z�kV����@b#��K���nh��� ���~����®��c���Deˎ]p��m�~�#s�lT���ְd��*Bc���e<����[�Fq'�p�ډí��9}�]c+�w�/D�3� ���+P�{տ�Z!t6L���ӂs��Weu�U'����B1'��
�Nm��8�����%�]�$�)c���?=:�������!�G���@�a�㔌����6��㫙� pq�9��č����g�B��D���Z�i�ǀIɡX�E�F}���R`�H��]o�;X��J.�a�,�����Zy[(ղH}�8V�t�o������($>i��ɬ�$B'�*_��n���(1�C_�B"�-��2��-Zf��{ُ��ѳ~�e?�#�ngBMD�7Ѩ�u�_Q0�3�]v�9u����Z}lA���q���:b+H�х�����W�|����r\���M\��Ȼ�i��H
Ř)�f��;l}�/V;B$��2�,./�86;]7�QzxN�o�Z�7��{I��v��5��.}��[�
��Jg���(�jTG��1���H)<l
|6/��gŢ�41���$�<�-7p�2����\�6W"K��*� љj�v�+���m����=e�m}��^K�Y8a��A���Fc�s�����{I�����D� ]g����<�����争��`Ƴ��]d�>�QZЏ_=���9�s��sb�4�~���+�o0��كQ�c`�d��q�~�����qjx�`|zq��>Bh������Olx^�a.H���q^&����W���E��{�f�D�,�{􂣂�C�'�C5frc�6�Sz+{�	��$��fՖw"h��:5� �#q����8[B�z�Ϳ�RT��"qO�=+ k0��}�-��z*yY}�bX�p�O!�u�97~�OV���Ѻ��:@F��!��z343�8�߁� )Z��|����2��7�c�f!�쾆���G�0*]�����#��'�CBOsD�;�u��U����G�	�/˼��LV�[�����<#H���F��Xފ/���#�c������؂K*��vCr���/�0\
/F��UbMݩ�4J�I� ���+�@�Y=J�v��+��˜	���y�5Z
|I��tb�3��r���F��؜-�9�?�&��p����zK�
�v��g� �Կ�g�ߊ��Ov�9�(g���f��t�0�^\x6���u�O?�tH�/(�s��ɯx�����i�%;��e�]�+�}4R>��	�|f���Hx��'��N\�6C����Ř����������R|A� #ZA7~.e�H�;���}����e��{��I}r�]�~�3N�؅�]���hU�����O�b4�#��:v��W�L�%����w���YF"�~TӾ v��۸B3+֠��p���Fdr|�;��p�L�9r���j�Zb���d,����1T�k,+�"ά¸���@�F��3�M���GmX ��.Q7��m��
HD�l�=����!����I6D���qxZV,�̂ا(�)yC��F
4�`�L%�L��*�W ߒ�t�n��O���	q�/��=@{xw] ����>IF0�G��dY��=@��u�� �F�?�G:=7J��"j��b��Q��Ѫ+_�.�dz,�H�/�E���-a->��B�H�S ޮ�J�xD.�b�&H�}�:	j�^�������qϭ{��k�(PsJH��,�M�h� �5{�8�XL�L~I4��%Q0�mq�Jݒ��f�kI��?q!d��b�ϑ0�R�M�l�3c��+�rMt�� ]�"�؈���dF��r��taqM)�/��1  �M�7��@.�2?-%^�f��7�M��`[���e��|�AY.�/��V�y���!< ���].ѹXq�r�+�)����[�#�����t��K���o���0L?_a�#k�e�op��r�x�����k�ͽ�2��K?|��^b�j!�T-(�A��R� {S[%QV8^k@��57���l�~�?�ł�ܻ�pֲID.l^��C�t�8���8�݁.�
��HT�~��������,;G?L�a��T�]��G:,�l����Y��E��m{a''�6;�4x�k�E�=���&�@��A0��ʵ�V�������I��hT�t����$V�h��{Kc_�3�_&L�E($�pc .�$�f�R,���+j�)(�|*�_�
�����_q���U}����X�ae����,�&�>���T��D�zU�3m��m�1A���� \�c�w���!��[��ijא����P�C��G�~rFWh���oݯr�A��>��(�&�4n��ĩ�BH(�X<�s�4v#`��0UC�IV�õ�E:m�nV�j1�x2�����q�S,s������Zg����˝f*�pltx0F��~�������!u��ۇs���0?� �j��ȿ��4Ѽ8O>�`�0F+F�ˎ4Z�!jH�m��Wy�Fov�|O\A�0(�J��}�s��2=�J�)l#����[�P;rZ�L���@&��TY��@	@!���c�2�!�IK���U�k�ۊ�aq�˜r��'!+���䂀�ߨ>�	���O�Xm@�Rj��Rqv���d�oҾf��~���@x
S<��0k=�hj;�����~��&��h2���*�~hCh˨we����A��y�.�{!�Z�/T�s�+~��Q&�C>�6��� 
�y������W��i|�����N����u�F�����]x�J[)K���"(�����P���ы�k�E�����JS���y!=��Ptp���ѫnI2A<k����L*�����,R�Yu������:�X���)���*�ȗ+N�!N%�P�π����uPe����m��������\"��k��hE�Up��Hg�f)K{O5��٪�J�c>Lb�i-�ꁩ����r˾��+�V�+P��f=Y��,S��b���9��ӿ�� O��h�)�@�@5��D��U��Z�5��+,��<4a�=m��n�ZX&���)�=�*@w�[5@�0���x�����G�N��2M9�aA�H�fΆ�H2��vv�'V	O�B�o������q_���=[?&sͣ8JǪ�|��!�Ͼ@H���Cp���x�<�t���ݱ��:�2�]3��z@���u�g�`��s~bvh�VF���6��3\�:O��;�s����{�%�-%��+���d�����f�����F���Y����t�^;M�k�����	H|\^e�����c����!p��M�I�b��Yzn�"BC/�Dk� "O��6�$�9�kʅ#��(J��G�
-t$�W�QVk`��l����sa$=��j�۫��;������$�fT�I-W��oC�0��3�c+��u��'h�)|V-]Y�[���t.,]4V�LZJ �2� ��kze��a��Ks�u.B�fx�V^�̴<f�<�}���ţ�Q��'{�Z6Ǯ���&L�0+g�(=���6��I�(���$��`�,��{#�=���t<���t�<�B�ViL<'՝�[����U�l�E���D65�\�Q��.����� ��Jg+���
���h�҂9�D%Se������k�K��.$����h��uv��T=���+�_(�    릩������_t�Ny!�|����W�௰v��F;xϊF
cWMA������T�"�̞Xix:J��k+�&v�P:p�s�}/�8ou�G"ڲ>{���dXCa�@Ҥ���?�b��x����:�/='�
������t�Qc�S>�3�n�S�� �N�2��6��;�".�n���T&>���m]�g�n�U��X�}�qg�FW2*8ڷ���2��	z`r*��`�W��"�/0�]��C50��.2� ���VH���3�E�+B���B�| ��|z"n�El��㪟;KFr����}�A@u\�؝�	p��<�#�F���
��|�`�l��VD		�(��=�+�P3)3*�~8H�f�"���me��0y���y�O�dS��1h����4i���X�⏦��ڲ��[Q��"�&RD!~�X���>U��O����P
��.�ݝ`��|�YV�~i�u�bI���(��� �B�B��^�;؁FkRi�]x�"z��r�{p+���S�0�&�;8IK��4�+�����L!O3"����IWq퉶;���wM���:��3�p�O)����9NQ��_1gP����:�H��'�9�3h�{?n4����O����H]f�K�������( qBV�ш�����t����s�x�Q��GU�������|/[#&��ÉQw��h�O�>�?�xi��O��ZX�*Ow�b�A��;	�]{''�/�"*����&
���x*�Ae:���~���PV�V�!�nA�Of�GhH�D��"�F�@zYc�}�	Y]�N*E�Q�\��8B���X1�v3�G���E2�'p@�ۮ鼌[�Yw�����p���zt�&\��� ��M%[�x���W�Oc`Oc���>k�*�5Ylq.��T{���#�:6�G���ROB�7.>���g��v�S��L-����h��h"�eK�5�����5\�}��o������j��]J`:�h�#��i�>� 5�
���r�X�<�>Y٧���d��FԨG/bl1K΁F�4'Q�|(5�-��'"��f@�:J�o,'�]Ă"P����L.����>Q%/W��gQ�[P�0ΏnG�8mtK(7uw�����}:l�`E]2ҖZ���)p)��V�u`��L���I��>h2�� �pɲnM�Sfkt�x��:D�JV�0��d6�
yf�����A�J�~bR��������9NWr-"�4��
�я�{��h߆ i1*.ٙ�S���i����%#A;�@�@��'�����;*�"���'��Z)䝚}��A5���w�x������� 2z�Q4�Lu�@�$�wq����qo�J� �+�\����K�bP�!���R��{>k݈b�Ѻ^��"o����.P�#�%D2h���^��GT��ժ�*v��b~�-i@��t_U�\by��co�K�W}�U��$�#(�b� ���_��H�%��s[IeF�EI'hmK�	\=�0s��z������Hkɐ��(�κE�.�S;�1PL���&�p���������Fd�/�H"P���<V�F!2jƀ�\���{�a�Ruh�΂a"�̶Θ���O�V.J�*�Q|w}(^H��ζ�G���@��|�^g�ȵ��lT���@��(k����\:�M��\�Yu��t�,HtnP�����+�C1] VuI9�b4fB2�m1����o%�aXCP��!�cl�J�����TY{��n�[��ֶ��5��m5&C�:*Rɨ��YQa�	&( �T6�-<s�w>+>ʼ�!?;C��ͤ�6�n^�&Z����α��`��-lWe�v�si.�e�>2�vQⅽ�k�,4�|Cr��sX
q�Q�\�lj�_�c-9͙nd����Jp&�t�s�����~�R��8��#�Z�~쵗�����ae<J�ir���p�f�i����J�`7�fcJ�ݘ.�����V��_���ϓ��o��϶ؘ�����G$�֩K#h��ƫ'�p}�5�AZ\�B�@�b2a/���e����f{�op�>�:T:"�Lo-n�p4Fi�h#V@�}���ٵrh3�r�M�0-�ڄCh4
�d\X?��TNLH�q�{+��&�+�����?�s�
��k��|�+Z�	�D�n9�A�E�j�G즦�+x酋1X�Z]���1�:w~ne�&����[S4+���ɋ=KJJv&�xzh�H����9ÐAa� ��jWkp�%�Rq�=J;�8�%�!"g�,J��Hw�P(we��\�e)��Y�E�5ӔŴJ�ް����Ƹ�8�E�7���?T�t$j�v��s�� �-ܢ�R�Ū\'C�i�k���61���}B���³��b��<w�q��$F�?��I��Du�6�v�{&2��{��\��N�@VQ�[�j׿8�1�k9b����>�Y��#v�l���;��;��ʟ�~�zNsQ6\�O5Ӕ&'�'�ܓ�k�0���%��X9m`1EM[s�,Qz#�gU�Λ��T.1s���!i-��)���=�CJ��K
(Cm캸(v8(��륿�)�
�f%�� y����־g�xW(���1��j�&��_��H$�q�[+0R�y���$����6)[�a��d<9�q�cDbz7r�v���7Ǝ�ȑn��	��?Ѽ�{]����4 �z��G�嘠���O>+�ˢ��`���v8��Ɠ��#?zHS�A�{;i�t�I�?�o�d$��V�s�h�i��h��O�@t^�r�\q��r�6�6�pB�*r�pH���Lw	�VB�麩�?�d�R�xꛜ	�a�S�T�\+�C��i[����B�O�p+9M����5��s	�}���^d\ߴ�� ��Fo+����8(D��c\~�m�N�Fmڶ)�\���x�M[��� ��0S�5�?;�oK�;W�����e矔tB�
K51^��(*Ld�������Uif���q�]o�5+RO����S���gMҥ.<<�	�|�����V:����);-��U[`��(��%�m�碜� v������rMV@�ą��Ik&Z�l�{�9ۓ�ճ�h~�B���Ų�M��(
r�GQ'�ֈ@�M{d���k�r�۞����\(�Y�c�Y����△��P��q�U�n%=���5�p8%��j��]"�2x���y���EY~�����U��C��R/�]�G�s	�����A���D%5�hŤ� y�	.1��#��J��m���'��V���V��`������!Aʔ�s�E��"���Jq�rC���±c`g2�5J�zї��E�c|�8G�_P�%J�W��;
肔ٜ���Zh}kĜ	�5�����[�M+�\�em�W�q����z�'��A�z�Q�k��Λ���fx��ּU,N���Z9u:ѫ����B+7 �2��( ދ�eW�����/R�*)� ���S�;�i[�2��w0M[~�A��]X˛���Ļ�k�\ۄ/��{l�(�{����R|m����a�L�X�06����k�վ �`�k�N�I�*���"[]�$A��BbIne�J�ە�q�r_!��z�U��e��6l�9vc<�տ^0R1��Jn���>�^D�P�Z���I-΂:�M�'��,ڥ��[E�V���񞛪Mw	j��7&���c %�ᥴi���軆5�˕n�J[�#bq���ԵsJD��s�]j[�~2�T*�H�[!�)���yV�+��Ů�.|���̎|�@��oN��9�T["PI��n���ag���d>I��Ʉ�C̪wqo�/���K�^h���Ԣ�U9�fE��ֿ�̧��',��*_f����l���|n���ޘ������Q��E�t��f���sm��mP�Uh{ۑ�m9�ֹsaP+�-���5Y����$����~ߵ�1�a�}�����ޡ�_�_�;vomo�h�oN���|�
A��p	��t0h]BЅ�K���\-ư��a��/YMP�;Z��S�Z$H"�`�/:�`ʟ
�b(�t�������Z������G    |1j�8�|��E�ҵi��Jm�|Oa�vn�F�w��-�5���2�l_��l�e��}���Cڢ�S`�m0z�-rjla��N���2fV�n8y��.0�/JӴ�Ƨ��l|.��2�L�w�������U�ݑ;�H����l_���xL�5�D�w(����h�Ar��ErFo4���2L�h>�
C�{]["5�Ԍ���8�u�܅-����W��^J�8HRN�|�F�3*�F�mG!Q�,NSo��&�VÕ0ߖ�����ݗ���+6�����>gQ����}����[bY<Y��-yR�hC?�f,M��K�^�BԮ�ˍx���H��X�B��Em��)�ff�/�0��QP��!�b�Ώ��*Խ�b��OAR2K9sQF�[:8 �YV��M�x$1r�F{R^�HX��\�>�e�;�5:�e�L����	��e~U�&u�ˊ����r�}QY��z�M�5��^6��g�DG`š鰕��X���)��)P,���{���`���S�d��j�l4�S�X��|�m�c[�~6'����xH���g wJ��P�ߖ�|3�;��s�Iz9G_�:.y�Y�V�h��	�6��E�I75�B�5Wi��F�Z��Hυ���$���Mϥ�B(�l�z��Q��.R=����r��\8��UH�%F�V`��5��F ���{^��S�,ކ?�B\A�>�M�p��ܵ���?zyyxl��= ������ϓP�:��ְ��$�g�V��7=h~�IJ������K%��:�yAUc�1U�y�?��w_gj�%��/Zd�RӺ�5֎X�w5cB��h�-�<���l2L��6��6ë�#�ϡj���#}�����#�>]Dk���y�Ft!gpM�Yzr�>�+�sn/
������&�����g��Fa��.E6Ȑ�[��\4�j@��D���Q�?m�'^S�w[SК�9��h�+:��J�与�<�[x�!�\bזE�{ �(�0c��t?�j��&��Tl����®.��r��Q�E�y`��o�~kTv4��>�oϣ������nA,����)�����)'���P�\:�H�W�4��)�/Җ»�Һ���U�>T )G�s[�}6���R�����ƠebBaR1ķB�)�K@���#���ᬫ��E����VG���ݭ��u����E����i74,��� ���P�zYay:�.��N��C߻�R����i�y��Я�l~�����t�}(��r��}�.����"z�DeJ��џ�V؟���	j���S�u���B�I��2����" ���}��۪��MM|�d�޼AȚJ0�܁kyIu�C�8Sʑ��I�=��J��Q�cY�@�}�	�k|�@��P���dcߨ�h�N�z)�Ќ��n
��J�9d���D��`��sͣ^���ӿ���o��	$Gy��������3�rm0�_)7�t�5��e�m���l��WL?!��`��6�JVW��F��oq�ɢ�ըg���f)��}g&�] �~ߝ*j�j����l���lڝB{/ 	�g��`���lF��0 U�{�$�j��4���X���� �B.�@�՟tV'�����"_��C���W��-�&�U+�aߘ��_�����r@5p�#g��?�!eU�9�5X,����/P�{ �� ЈJr�2��~wK
��c��@q��%=Q�'��Y���3PI��D�5�%,���!"�HӚ�H^�uK��͸C��F�s6,���4�\R�|�m�-+��"�,���\c�h��	�A`���\������ҵ˱�R	;��n��yߕf=��#�y�n1t��0��Bw��l����u1���kWs��7�u��	�\N����X��]�qC[}>jV�\��m���x jDՒ�G��gʞJ� ^����#3�pM]y�6�g{9FM����Q��'ʖ���[�<n�@O���9����{ZT�=n��(>�˓W��
D��sq�=䇶0�|<t����Ei�*�O��\���]��ǚ���K7� H�{L�W�UV���
�$�Y\S��׾zY����f|�Q[��`�emb��-P�z)�>�* 6K�8�����ܰ4L@^\�e�u�	��o*��K�p���)�ZBX uϷG�c�Pt='PcNL�P|8G[����'�Mf��6�RY3���4�Nk"A�簔�튮��4��p��FS�_f�C9����d�M��9NJzǵ�{61��o���s��'W^��kj�6�e!2j`wloi�x�P���קb���`�#*��說�Eζ-�G�-͎�sy|����H�BF��O�J�ӗ�>tI1���W��:dJ����Ek�2�d�*1$/�Zv���-"p>��]g����{I��-�ۆM#��(�3��a�	+�LFI¦'�S�Z�ݤ�����#5�Ɖ"r�%8�b�!!�u�Q��1���gֱ9o>�[7��ϣ����|?ᮃ�R�^V|T��{�� �kI$�f�����_� '�pz�&��!$C[~>wA�< Y�v�_�~0�� �)���~ɉ��� ���d�<GB��PU�Rd{��)D��98����Ha�2;kz����qԃ03�A$IZ�z�w���`�
�'o�'��R�ډ�Ps��rsҲˇ�_�+<'+�OG��:@�[ri-Gm \T�Kö��],S�!/��&�_z[����[GrwH���z�]�v�*�����+��w�VM�N�������;G��a_B1�8��j��Z��5;�^�c���?p
�"�mPC��k���
��E��9^�&ƕp8�	9�} �m�XY�t�z�V�Sj���mOS�I�.,. ����%���<`/40����K��0����s�.@V�}7�s)EW�B]3	��&�\�Wڇ���Zi�=��C����E�oUu�j�O���B�?;�[�tކ�ʹ������ώ�֘8�&�g���=�M=���"��Tβi��!�k�B.5�b�-,;�0���h�4�ט\������dԎ���EQ-\�!�&���l]��5zFm[�95��#�k�͚�f�6�)u��'k����S!��M�>(���K�h̍9q��QA���|� W���jq����O��J��m�*fBJ�U���P�"6M����e��A�3�eER�s��8"J
 ,Eږ %��⏮n{T����Z��C�cb9���R���+�R�P���r��o�$'�o���
5��oY�s�����)V��ק�ς{FG�x�4U�a��Ҿ�3���-��Z�Rw�r2��îO���s���@6�Q�`h�;���M�9���3���>��W��O��g�o�Oc�6�:�'�E�޹�p�r�rK>�1nt.���)�uU�fݞk�q8���$�귳2��1��a�i?��U�Tznp�^�+����,���3G+�G+�PK9a>H��WXg�R�WL΋�;��j��`�̠[�8��l��Aw~H�5or�P���i 쉏�$ht28zy�d���Xi����L�D0�'�Cx�w�.X�F�����є���(��hT_+�.-R��D����Y�[L&1�1�׿�>;�׿c���F��������[�h�m>�G���j�zi��w�M�(l���1ó�;:&�xG����+���c�s�[-���4ڬ��c	��.�;��>RL&f���-����$��1�k_���b�l�-�,�Q�+�f,�zQe\�n�u����O\o+&WQ+� ��m��Wg��[�X͞��wTw6��W���B(��KI���33��c;zsz�����MS�<�݄N@����3w�۶�Es~d��=��EQW.�1���C���.e�S�Q<�Yq>Oo�n�<逧�gDeF��L�g�E܍�m�]M�7�h[��AᒭC5a�p��w�$���ME���h��e���F���]@]���A7|�U�w���O��n��G�U<}sܓRWx������e�/�Ɯ�k�WhZ��İop� B|)�#8�6)}�C��7�/n�ؐ�&%)>W    ��~x�qW+�!�|�[Kl�[���wZB��X���ۜ�L`T����U���/[��7��2�Jp�
'u���	����H�1����s9����ر�"(&��`>_8|-�n�$����y�Y[̵�����`�aW7X^,�E1:������UhY5ߏfq���U��W%����t���H�� �<�K%�:_9(�s��BL?���ao��%�i�ƇȪdC�Xp�x��?|�ົ��:� �\�3~������}A@6o�n����Ӿ���^m����b�;V8e f��`m:R-��Jq��*X(�K`?��%��ݡ�:P��5���=���w&R$���̋Z|񌺧-2�.YQ-�J�l��Σ�y�-3p�Mz�`��w��qq <�޲d�s)@���d�������<u�C�L����va4:�H�A�#:R3�B�዆�l�������y��=�q$��������N�n�<����w�uP�2�j[��Pܑ|�{�t<6��?i����~�n%Ƅ!\5�[�e�(�Œ�V�v@������
ݽ8�X��;�p��=�;,��=}��iW^�q�*�G���)�>z�e�_��p
V��aU�;Y��Z(	�_�m`�/2
�\�<~��[G�A<�b�yf�����%���֙w�@�޲�j��������x�SL{D��Gv���M�g�`�P���mn8RE��D�ĸL:�9˂��ή�LU����o#=`�aN@��2^��1�h��Ɍe�YP}��*?#��5.�}�y�S��۟�Pu4O{Z�,�q��C�JAm2=BH�˂(�H�ao��w�G�k��dL7w ���M&q�4���ҁpI�'g�H!юVz1x�НX;�ۧ[0�9s3u���Q��,>��s�����&��l�v3�؅_� �g׷[�G'�A��ݧ2�9R<��,:���#��w����S����Q���8R(&w�)��{��Z�2�����ɋ�y�Ъ�>{e{�W�^�B�� �B�L��xe��u�	^�>x�����tѵ����4���9x[�ߵ�v����l��\}��FxG�S}>���ѬNz\�B]�ab1�e ��<ga�,!�=���v8�Fן���@��M��^#�n��1���D:J	%����� O2~�_@�f��C,)��6���dR=��R(�s���� �V�?J�gh��"ڇQ�,&�k�X��a]��$R����u�;�����5ݨ# �"�P� �n$�^��(�N�A.bz[9�u�o#w�x�5LU�t�A��"}�������P�x>1�޵d�����VD�R[:9;���ms-_����]�N��[ �N"ffH��5l��+C>��C�?<�ћ�WǾ�Ʂ�N"ue�1�i�a��άO�u��G\u�������-�U~����aV��Qb�����y^�`�^m;(j��S���&1#h+Ʌ�h�N{-���$�T�}�D�ßjH�ReE�V��u,�:;�ZÝ���N�#̇I�p�#�}�W��6ڹ*_6�r�]�&\jMm)
��[�<��܃\��˾1I�-�Q�CB?z@���Ԙ���li�i�*\6�kg��^Ͼ�M!��`�Tv��^�X��4�������������;
��j(���;$���&5���>F�О�ME�o�n��ciE��?K?����0�RQg���uG&?�uH��0*W�ȗn(��䶙*�� >xpD��΂Rj_��:��a�5�mxmx�6T{��n7N*�����u���Ɵ��;w�Y�P���Yh�d�U�����&�{��B)x0�{Tn�p�"ؗ��/��u�L���޻߶zZ�B�n-�}(Dck{�}�5�������{�w@2��D��7<n5�Cgw�� _��h��u��x@��L�w���=����Ի�Z����	�P�ŶMR͒�|kz>��u�8 ���k��U�Bb�E���, ��@7m��v�&�wN?�����W�T;+}A6
Dܯ�5P�f\��3F~���N��p����|��-�[s�s�|�44�YX��M4�Ϙ�t�[�}KYR��tQ�u��H��yܐ�P��H͇$�S-U���N�����Y(i�FS
�B%��2���s�z����יִj�<���Ͷ��U���`�@}�7�T�VW<�XrI�"�h�!�guZ��*j�L����h���1��bS��)���}�g"�ӈ���ӾEBye��ԫ�ԡ09Mw���hM�m�|���r��|Q��q�ɲ�T�ƣ�E�,���e�.V��4H��雤EK�DK����,6�����(C+�
Sl�%Fj�YTU`��Xa\�*�^���>���7wToq{��]�!�����y��[L�}d��G��Oa>�Ď��������EApcU��q���aO�J�^g	@4��4��0�[��J�����ߢ:��`sw
��o>c����N��s�MٌDY6W�K$�2�1\�,Z�(9����v�f������gfJ�ʅ�e2v��M��(����D �Gk'A��xIp{.�.V����[!�	]$~h[�o���I��	��KJ0��tE?pD�}�y��h�i�o�mun��4S�<�j�l���κ�~A�M�l�����`&+LCM��Lb>�:��N{�6s:�H��0��G?aR	_4��z�EUf�EVs*j�v8��1@�������/[�!�E��:�Ê�.��i��.�Xd�k�P�Fb����a���p��C�_/j� .����	V�\O:Wr�F����JN;9o1�~�_�� ��=��3d�o�!+:.�"�X]2��ٗ��ӤV�v�������y-U�/1(��	Ph�0֧"�2�?7%iA�yyҵ{w��5�ޙ����e�	#�(���a�������DG^�E�; ��^�;!I��o������G2��0I�S�|����9F)m#���ɜ�&��N��j�ȅUO3�i�Ѱ��C��@�D�p�緄9Rv[��<C��sv�0kz���L�H���^`C��%�u�o�	^���"���v�H�ПF��������<���A�$��>�q-�]�<��4�	l��$���OaC���}�%�dR4�1����"�����֢T���B�<	�����<Kh�� ��P8��-'�4^�d �H�t�(0���)��"]S��)Z�)6�v���'�h�I�D�ѳ��
~��Ϯ�B�?�� �[��>�F�7ʰ>�H�d�|�䚮�#R7o9͆I0���>SE�D���h_K�G���L]3}=��\]�Y�9%�
��<5X�T$���wP�Q?���Qױ|-y�Cb8�~W�����Q?���I�Џ��h�{$~1���$��9۷!�Ax��cׁ홚fޙjۢ�S����W�$Os�v0f�4�A��cP<n�R�QL�\�r#��Xw�5u*`�܁�j#�Zz�dhy她0� ,��T"�#��zƄkx�/��"��d�`˥T
��E�XI;z�8��jz�gh���%���6����3��3l�G�
���Y�?8�Ǝ��^��U��o��lO3��cZj�'��2�F0A��X�]z�}x?s�ɂB�p�����G+[C�N��|.��L%Khh�	0�k���X�*0"�uñ��{���������jU��R�IO��m�4�F�P��<�����G*h�j�e��F�I���	��m]�.���O|JG��^g9ZU�>^Im�mڼ=��D����2p����d(������E���4��.�����2�oO%)Rp6���Y�ir8��[A7
y���k��u��tt��N2�W��#��y��~�#���@9<��4�r�>���gb�v��0�C���K��{��D��#�N�a���J]	Jt��,����Լ��CUe����tƠr�}�l�Ц�N��`ﮫ�Йi���&���6�&�W�]h���T��4Qs�s����Gڑ_��b�e��й�n��A!M�&�BJ!�z_�͡z<",�Ե��	��Tꨍ���b�h    s��5���,b��Mjg�,I��M���@�[N��ů9�b�X���o��kH����3���%�����o�əU�(�ޯ(Ňu�
�_������A�-f�(^�E�(��F$�^(+W�Y�p4����$��Ca�)�P�u���x���y��)�\&�GOD�8��~���Lj�/̋=C{i)����)�Q`0�I��~�����yM�<)4�)0�*�q������T"G���j�'Ab�S�ZS�<��yx�|�Ѩ�p��5�N�i���KG�O���b%��Җ�KM��F!�P��Ki���@b���'em�:E|�^��m�;�ޯ�8Q�c���=FQ���|���6�JX�6�,B�d+Һ�f2y��Uߞ��A
���D�u�e���]�R��(��M��}1N}�ю�hh�7=�R*܉�e���ʗŔ"�ު%����r��nƞ��Ù�� ������~�;�~�~p���ׁ[��;�a;����>�~(k�{��{s�{��7�C(m���������!2��|%�q�;��L(��&����d����J�O�b*�h�L#�܇�ܕ�x2������\f\&��KK΢	�9�I#���2iz��h�	����5 ҈3���|��G��I��A�ܕ,iw���;դ�͇@t�tίƢC�T$�b�H'��O���t��?
��z�j�ئb�;4i���-����j]2�JF��f�p�F[�kI�^kсxww�D_�����8�k�%�Fê���J=TZ�Qz��w�$L��6��ů�RBR(�Y�#t���F�w&�%D;lHA�r8.�/c�2T��b���4y��_�&���r�[<0#e�cGrM���1e�bq��G��gu��50lqG�����ޖ'����s%)%E�(D�%������_�tDE�9c��C�yk��0Y���4ZϾ��%8C���}�)4u����������ݾ2%��i�x���
m$��j�J1N���Yg�vjuk;�bS`�
�r�ʠQ܈�r;���#M��{6�Qj��q�(������k�*@?�*˙�;=�����v��V����n��s���<�HҚ�Cv�<�91в���5�5g��/�٭�E[~�\~��r�Ul���￩aÛ���Gr]��J ����Y��KVp~z[�;v�%hU����Op9Զs8:N��>F�����,y�)��L9_�*�qϨeF�ʠ��W�:[��
�e��[�P�"u���e�}�lJ%DoBKK��.`��A�f��s�&�|V�W�,�����W�%{| ����e�+�����������>u�&��[ID��ش;�C�[�~m=)��jw{B��������_����P7q�*���|ww�հѪ�����RM�W��MU�RH�7�P�5뒒1HR����h2dki����������z�z�-C��Z�����F���TR�m�{�b��=��EkـUV{�ݱ�rv^#�&���v�y`��û��^�����[ۭ�`7�۪��&W����?!�߯>9v�JW��R�Uq7��'J/�B��.n���!��Z1�wC:{�nS��˽]�)���T��1�CFx�\[��������� �}~~O`����`�d�nR���.��ƽ� ����#��|qMV��1)�Īud�݃�䰢�]�wix8�_Ҧu4��p�ܵ�.|n<�q������klX������	���?�'go�=���7a�IL�fڑW/
��gI�A�{ر-�T���=y���㥚������5b��[��"ϴ�1�o�ɧV��6D4۰��W�b�>:��:�{�=�!}W�Jl[���̿K���&"��m�~�6?i3#����:e\r��$�T�+��;��2,�:bI�LT��ba�A 4�z������V���׳F�ˮg;���8�L���%�bƖI�6�&�	��<���U���±/:k-��xyxN�Q�t�&c����,"���=�yr�UR:��<^�G��Қ��U�+�:�v!��Fr}Q�^<��4`^sɜm�����9�Px�����Ps�������<���S7�֤?f�^�`LȮ�f�*�~*�tA5�X�^�0�ۏa�	��0�gD}dr/��D������w�(�_�����"��G�j���C9�!�&%�l�;�W���iH�7���b�? ��_)N�++�eM��K�S^�>��8�z�OkEŞ�TМk=���D��o-s���&~��Q��7���6������+	®��߲�������Q��/%с~�����:3Mwp��OG�*�$<5��d<H^����[�)Z*Dmi`{Ɍ�p��=!�m��Df[k@�խg�����u= �������7������FW��t����0t�v����Hs$=��1�\_�2xu�^��0���fc�wTT,Y���W ~.�h��'ю����nP q�Zd����b]�qc��U��v�vp=T�w��-��eE�m)x1}bA;$���g�u���;��}=P�ch�B*�zͤ����8��+q\��͞E1�'����)���=/nx��k��~����fg}��Q��4�3�� k#]UB���n��e?d�?��H�.�R�X3�kU�Nl��g2%��vȻ������92h�@Q����ŢX��N���D6�-,KB;G����hEj�ڌ>�D"2%壂��n=Qd*��5��j��9�uG��{�����y�����54L��\j`Q���3�5��Ԏ%7=LlG&|��3�B:w��H�!����x�l�u{ՎC%e6� &wy�[Z������1��%b[���R�?�&�1-i[y=[�#'y�$�M�#�3�:�9�;��P`�8g��]���c�Q�AI �;�,T=�)%��{�pl5�ܪoc+<��Wb"�uv��fj�g
u���V,JQ`A�n(��8�G��v�	�wt='P�䍘t@��%�����ءY��pQ�7�|_dp\��7zQؚ�'���/�`�c�.a!`;�ov�ȶ��!J��|2:�O&�o���[�O�v�=�c���h���Ip�B��O5��4����rOҕ��c��i���- S�0d���W�5�?<���WRcm[�
�+��+;f���A/\r���"!
1x>&#���K��:[��ƷN[��8�Q����t3pM2��U���GIv�'�S���"��p�3�`y�Vb+=����p67�Jj��aLsM5(Z�9c��b>�N����g~bעds�d���!���R��5��ׅ���J���I|�'��.����Ї���`x��ޓ.x�D�
��_ ~0�����E)n#Ľ���uT�F=h,��w\#!�Jnu��H��]@qC1�G�W��*rj��R$&�5����>]M�7	Z��e�&�>�U�LU�w4k����EB�'@��-�qؤ_s�H��]�������B2,J�t*�3r
]j�5^x9P���7�]b����B�=�q�%�y�)��v��y�!ی�s�h��fT*��!��y�f�Wru�uI�����h��O�x��]sh�}���t��������.�K��|XI�� &}�����W�˨*�e#���	�<�y�]xa2EDS�!�*�t|�`;䃿���;V��O'��UŐ����;Gk#�N��ʙ�P[}��4���Q��]��]��8� �[�F�[�q��
c�]˔))���O0.�}��bM��ëRj�Y[��N�&_ScC�Z�f
��cA�����~�F�;�M���]�c�%�u��*��p|�jYh3�z7�6��cO������*8v�;�����E�o�=�Y�w𤿐�/���#�5�M�mȯ��/l�����n�³i����mH:�,I�Ηm�/r�D(��6'�5�	���W-�t���)���޷��QW:�m�I�.�j��2�` :��*29�c�Y��l���_lO��v6o�R���p����V��m);�sT%O��վ��V��G�� P   �+���̥P
�7"�5MHv������W9�aYQO9��1]�r���Y˚�+]��Op �F	�����������7�      �(      x���ٖ�6-���v_ʥ ����,�|oy�����^���)&Ǡ�_� �A!��֒Ry6H���A1)&����r;���l��7���߮6��c��<��������_%�?N~�ϛ_ı������l3oV���r�q�Z.�'v��f��Y-V�͇��f�ph�:5��>��b+�q��_���q�f{�/��4�'~�5ۧ�*2h���0;6�Z5Z4�w���t ��`�4�}�?~y8n��i�l�h_�������칁w+J�ʪ��R�����l�����~�{���a�&�,�e��w��~N��(R��Z�����o����SԈ驇��PN���e�FY�T?���7�ݗ�������?��g�@�f�=,���
�ׇ��y��<?���̱[���}L$�,'?,�������M��Vn��h,����3���*�U*hw�b��r�j�{j�u|jU ��ݪ��ޭ��@~����7[׶Y�l��~�����+�X�����\gg���q�Z�7�DLOK����_�Eb"u��*�.�T�])Z�����W5�����ݯ��������8[� Z���V�O��ћ�q��c�h[�mo����]H�ʪv-+l�_+��v�=�B#*�w� f1y�X,ϭ�pxxڮV�O��_��Cʋ�Xh�c��\g��\Z�6K�}�,��>�D��Y���~������0��uZ|�""��r�����x��av��ߞv���/��ln;��[a��?_��\O�z�/	eh,crҠ��<Qu�~ܮ�lϵ���z��a��?kt����2�������j���>�
4��c���ɷ���~zY�_�3\[�v�ղ�ɫ*��~R�
��ZW5t�����f9�]ro����o"�$��&�=U��|�F���*��������b���5�?�����Q�k���^[w[�rӀ7����W|@�6=uނ�`��ȻK��{�n��)Ӭ��>m��I�;�����/� `0� ��s�IɾF������x��4������f��f��v��c
4y��Y5OhR��z���r�ؖ9���L����j�<���]����m��?�֣E�%�&���3o�G?�Bsj��&?5�fߚ� i�����m��yL4�d;�^X��9j�=eS��d���a��/wKt�55��:���v�~��9�#��[�K�^��5����u�QS�ݺ�y��5�����:�&�Ԇ�ݰ����54��=����ş�����,��x������G>�F�<�`
M�t�m{ώG˩���:���S�n[�**�L,��ҿ�Nls�W�˟l��57�7�p�XLK,b>P���+��Rv��W�v��|���@�iD:A�DPw�k']k�Vh]M~�5�]��î�����չA�L. ��b�}��������ut�8-�	�� 8>�.����а�/���g;L[
���2��b'�G�m��(�;2mm�-���_R�5mL�>�J4}0Uh�2y�y>���}�F�����jٮ��Ԡ�Sj���V�9̛�!0/��7#�Ԡ��[���l?#{Jj���ώn���߮l�_Bmw�����y��̭���~ǫ�v��gO��y�����0*Jj�/���EĔZ��ɯ�u�>�ѣ��;�8��q��B`j�~Q��&Mp*5kĩTԜ��<��[a_���]ի��c�����R]�+��hW�5�o��e�sP�Z_�?L#(k>P��W�֮uU�� �jW�������ҷ�q�E��#�P	%����+=�I��,�ujP���sW{򓝛<b�rN�@[�f�+OV����� a��\~ �Un�ݙ�؉�-���-7R��Ȼ�HWe����Ĵ��m��>G�Y
��۷��̎���WW0�*DY��g��|�|�>H d1�e�X>}���'I�o�x�Юxm��ɣ�+�t9S
��D�,P�*'�.p�47n睟����e���r���fn�y��%�4@�E�.EN��l���G����$<���2lu�W�m?4�p�X��'�f��Z>��qK5ҞE>�T��q���2\B�%<�%����z7�xڬ�C����D���l}9�E��Eo/=�6�+[EK�C�nK�b��+?�;\��� �	��*�ѷ�����v�並��R&Xz�'��ڻPD�<���(��������xY��k>��[�vV��u"���-X��uˍ�^��.�z>���o}v�u�s������"$���*H�­�~y���Rb��V����rmq���\j)�����zȍ":��Q�NhA�nB�%Ýu�E�KUh��QXj�����|�O�:�����Û��?�
���5�7�uʋ!��X)4ˬ#���_���ڨǏ��)ܼ�mD=�h�&\Q��).;W�k0��)�9�㡌>$M�v�.��J�o��t�v��`:�E}�9�0i��#V[m�o�@���
�@$B��G���/���qO������b���y1D w
}�;��Y�w�����t�DM��G��K�9�/A�~��ٻK�]ng���q�/(�Vd��]֐�D���Ph��]H����m/� �q���>A�����G	¥���KP&e��MR���GV�nP'e�u��;kl���.A�����TKY�**��h,bhG *� s�R�߷��j��@/�ofk�Ԉ)���á'd�N�t)A㔙�.%H�R�Q�O)��§�ؽg��+_��P����+4���.T�K T�CUn�]T�;.�
�H�j���r;.�����~�/�2���M��eP�*���Mɮ�b�7��^����{��<�o�:����An�:�s��N�Ȥz����^n`��g~M��9�w���.�r~���8����\�b�q�� ��Hpf	Z��:bEu�#mT�E�O������h��7���8PIu�ʳ�Ը���҅+�i�v���&�# ������5�lٸ^���y�Z:gme�O-���me���-���iqPNMn�Ԕi�QSUH��@_����������1
�=ȟ���1=M٩�޷��:R� V��NB��ҪtG���^�wߝ�����';ǟ�@��ee��A�h�h�e�י���nS+�nZ!k���6�>.�k�E+P�I�)�����K7���e�j��e���X��i2��DM#�X�C�L��s0c�,�LS
K�/M��1��Ci�}zi���|��U��b�Emoߝ�[\��U��<h�ƭ�����O#�]��i �ڢ�&?���ڵ���
���?���N�uZ������xp��E���y�{ۊ}8�_��i�cӛ���ӷ@�?{��cA<���.��xb��w� �F���~N�+��e�Q�z=�w?�81��:(��k�z��8����kT�r�[��r�A��k԰���$�t[�+���k�(��Q��\k�S	xP���
�\=C���=D�q]���a~�&|T��>�هs��+�:����vgֽЧ�~qp�@���[��Ǘ�Y�lU]!��nkD��

��m����a�j�q��S���6�ÃUW�u�ϓ_�۬�٦ٞQ���j��~��x�/��=�,#����:ЇVԷ~��LB�Uu��
N�>� 
l:�$�ɧW�f�����Ċ�5�/	ML�k��i�j��ߺ[� V[rE���p��~zr뻰�
�����o�nCv?(]Dq�\ �Vq!vB�Z?�wwu��'�x��[��Ƚ����ޟ���b�6������;��S�O���[�L�N��`���fy�w��~�7�/�X7͑ß���� �kw<���>�Ϳ��K�	�2�+`��w�^g;���ڮ�N��]}�G�qW�u��ݸ��:D���T9<�"��u�81�#+��@���
�=�""�Ȋ��1 ��>��)���)}o�j,1��)B��E��7#=^�h?ܣD���=J���B��H�
��{�Ј��}�X���1�+��.og�CvPKOF��$�tkI��֒83ԭ%�$ҭ%1$�[w�ݢ:��~�Ƣ�4ߺ�И֕vj�Wu5]g�ܫ�
��X�X��dU��    H�ʸ�|�?u�\�X�_���6P�=K㎑��z�@x+�:�v�]����v-{6�:q!�3+"G{X6�(��a�_�z۔�0ҏ5Q �sj�F,�q"��u����l_?>�����u��O[��_o�H�ho�*�u��×Qh�b�f�_�i���q����Ӿ�����t1UW]-s��T]A�#n����"�Mv�U�v�]��Y'�ɮ��n��z:�7�U.�����J���&�����I8,-��dM\�s�5�c�M�ĉ�����~�&JDzPM���A5P�y�?ÞS�h�h�G��r�h[6�kb:E��gF<K�O.�w����q�<4��?����bZ�U&�ĴB|g�T �K�	��9��1DL%I�5Uh��Sk
��}��4N�bZ#j�G�b�֩>R�9Q�h5�#EQ�����@D���Dx.g��)
�B�"ǐ�q��G����%5}^(���ɉ�B�q'W
Dd;�RbO.�������Á��?O�?�>�Zj���)�A���P��h���j��<�U�#$��}#$����HTAk��v�����/n߭�%�D�8�*���;ݟ_���Ft�{��IS�h5��U�)��G��#�(���߿�"�Č<^	���wNB��8��FD��At2�D��~�)Z�C��#�,�9?����ˆ*�,�]��g�.qiב��@4iF�ѱo2h��M]�H��|�lgL�N��W쪉yŮ���2��v��ϛ���v]u��M a���-%	&F�y''�$���{���Sh��$J#�i���A8'����s�=��A����g?��M�V@�DZO�,��5��G"m�;��OK;�s�|t���Vh�����6�{{����4wuٞ�&�Dh���e��ą/�|8�xc��h�8���l�˾q�G�Y 6�̘%�?_uMy�������a���k��y,��ro��%�k������
˘_��y�"����Ivqzz��v�:#�4��f�U������-^#d�� �RE$-sϯ	�,��G~oݵ;!y���� �Q�.JAqTX�;v۶��j�'��ї�x��:�� g*ѥf����Ma~��`����?B���R���@�T��C���׋���`f	
�?c����K9��2�������BR%�z�7�w�H�5���m�0i<h��u�6��������el������~v�qk��/�KBhD,��1f�:Gs���'�Qf���N�mV���΍zs�O�Y?؊�/�}W�g��-��ד�+�^���rn��ru��Q[o&����Ɵ���ϡV߹̠G�ߜ*y�PoYP��u�Ý�����mO{~uj�x�bYPD^Ȃ�7r�AA-�w�@W��| ���G�{+�zd�#��9�v/_��̢9ږ%~vu��G1��\�9A��bd働_�eҢ�����%���]��1��l'��*��Ĳ+@V�hT�U ��hT��&]x�A}�i�e5E��U�e^���f�m��GTh��Ͱ�Ud%{�f���m�6���߻Ebw"��oˠA��;V> �2=�gb���g�h���]Y҅4�im\���$鰏��3��)���Wv�Gg���]*��oΉ/��+�1:@�As���U�3芉U4��J�Un"Vٕ+�\�	����v5@g���]��Y%|lW񫢹M��h����n	�f��/]R���D>�F����
rU4]�T��}nW��|���ݱMW���<-�O��T��s�ϙv��\���*��!X����io�1T�]Q���E?ߜ�9�ÏM�R��NWwA�;w���4�=���y���7�|� ����;-7�V�GT�(;����sf���a����:�JH�SW���A/R#����.���`���<vR��9��
���`��B%H,a>��9��r�:���VY؆:�^�c4b���}��v�jV��5�U��O /����&��7��5��;��nc�ƥ�Ǜ������_�ފ4S,��Vq ���Tb��J,�ĥ]����hf��x�4%�?olg|	��K&�����:��aĩ��_M{���q]����wۥ�g�ۏ���`AD������������>�؜h����V��\���5���e,�/w�I��k�{ǗICTܺX��av9��{�nf��s�U��n����w$��4Ļ��z����
Z��u��n��]��ļ��]�^~���w�?/���D��M������WO��o�2hG�p<�w���kb����n��us|ْ[��y��hw��f��G�-֋rmnf�O϶뺽�K:o*���	����������yj��-G:5q���q�_�p:�Q�"�FM�5j \�.7�vv��AM�X�㥀�QDM�'����0��DMK�,&�]�/
���n�BB�&�73��EHD<_}߭���S����g[UM5B�=��pDH��ȵ�SbB޽���	���:I$@����M-ςi�*J��_u;�P"UTh����ߺ�7?	$Ը��&᪐y��9�K�8B!�]�1�����G����fӬ���Bc	/=�ѻ,Ta?�ݎ�p�+�Xc���v�Đ�y�*�#�D�<�*��(��l�� !���5��tIk��Uꥈ�2�@��V)Un����tKu�_;!���5��>����v���IQ"��k�M���L�"")P6��x
$��X<f���Ł8Q�>N�^F�ޖ��|ޖ{X�M�4i�?n�)Zh�R<�"�eB�O�+7��ǥ�U��+4�zj�%�SdK�"�).��xJP�f�R�mq������l���g�%ӧ�~}Kل��H�ʧ���]����v��|lp�G��iH� ;eLoV�v榼V |���?��L��I1�>��omz԰�u����b�o� [���#m?�������z�k[���m��cҨt����ḵ���󗾦�T:���͂+1�S��J� n����/n�lW�n�i�<(��4�JQ��6�����C��]�P���ɿ�V���[�6z�F��/�}5��:4�h�h�`�����a�i��G����P±�zT|�i8����� PM}�e'�U��@©���o��@A����A=�
A�/�B�5©4�"�T��� ��MjmA;@���P���+,r��qT�!���˺殇v7d�!p��y,����!�]�}$4��@�̍�T�v*�/�ݝ��%[	g(��Ŀ;��c��iTE=�*���C�~\���ػb���?�@�TN���kk�7
- ժ���+�?�z�|Y���@	UN���V��%
��r�Ϗ˧4d�ȧɻ��4d���k�{�}���Ŋ���0���)��@UN1.��؂
�S��$���e���Q�����D���L�(���
�E��#�-��x��r��N�CO�����錣$����y��v��D��)�1���İ����ėQ'�h M+�,�Mgg��?��g�`F�AU>��͙�\\�AUn����|�e9�}0��rS��=|-�%���oZ�����嶗S �9�؏]�T"�e����$(ȲB��Ͳ$K����+�ОZ�CϽ���\O~������@<�q�2���
j��j�X���^�r�C?�����dK�\��"�x�W~�1���L�D���u�O���N��:T�k��~޵G6ֱ�%���Y���%y��P��^k����S�zy����2�3��{�t^v�}*5�i>��4H�J�r�� ][�\�%5XE$���">�4O��嚼���Ӹ�0�f�Ѡ}�)�C��� �F/Ѡu�^�A 5^���i]����o"iE�K�wIL���ȟo{� ��B?F�*�T����b��A451�M�j2�6
����7����>^#h��Z�>�F�����ߖr>��k\��]��N�~�M��q,�?��ӽ';4�ћ@4(��7�hH�M ��!?	�h�~�h���+�
��)�]�T�' �]�T�&��]�ԡ?N����U�l����|��\�8��KweTW��tWc�I�tWd��I�UEn����d�	�C��>    ��_ٗz��ZE��v��&}����QWEu�f�gw�TNl,��2Ʒ\tW^u�H;tUg��]�U��J?5��E[�����*���p� �	TtWf��c@�����c@B��n*��at�Tg��=]�Օ������򾧫���n#ͮ���(���p+!ۥ���]ӲM)2�x@o�m$:�zb�7���˹�����ߍsk���kF#d(�֖A�kk�A�a����h�ג5��ݝ!���=�a��A��H̬+�ľG�Y�� '�y��B\�A�o��|�BXr�����k5=�(&���W f:Eh}�i�fY�m�@�r��~�~�#�ߩ�����V�z���n.|�@�����	ֶ�� zxT�L%"�����l�о�:4S��O�3�����Հ}���vvҨ8���s���%�)�h=>Ț�@H��d
bI���"��������6y�vv���I�#0��B(=U��@�f�q�l޸����^��[<��.�V��3E���K�S4�{ɮ�)��ˠ�s��骜ҟ�}��9�i/�B�<8(֋��c�c���+#��t�N=+l���=+l�Z�����>s!?�ݬ�}טּX����2zU��ʜ2��S'�"r'���Y%Z?��ٖ[7~[jpWZ�>@�Y�@ӻY����y��u,_��E!��q�����҈������J8�T����9�NFG�����5"�nl�XD;|�1E���_n�t	:Vל)õ$
,�y����%��2\B��D��,o�s�R�y���,��p}Cl�0\B�c�|�ɛ��t�G��ķ�� ��}Ͷ�NA�tVI����t���MF��>�k�m%6}C�,{�
�2_�:�p��\��8�{M�%�^S�Y�k'�t��Խr�K�S��\`�s`aߋ,㖬�E��h�=oش��Ⲍ�"lw�R��U�u�.�Q%��)6ZWh�0QP!�U������$B�ɻ�z=��%�6]�?�}��H�f-��ɻJ��;w��Mͺҩ��p=]��A{��MWuV	�ѕF$�]iԙ�5H�>�˟��ss|���8P�H}n��/Vh���!�/6h����ԥ������?���ыzH����5��uOK�ы^{'2-�׀�6�����Z�=_Wai]��#�f�qb�j�r�΀\ZF_PF���D��GПv�����o7h{����	��G�����!|zh�)�Pl.�}d]���&m4{�q�ƋKv~�ؠ�"@ ` ������;K5Ph@�,�@�,��P:���JbguNyy�*_S��a��ӧ�� �Vn�è���֠�VS�r���6ra��	x�D��$�*g��A�R�d��ev5����ՠwV$	\�,zb����D@� �;+������=K����"
,�6���+(���Z���w�z:j��
�x
��G>] ~}�J~蠄�O:N��Z2��A#���@[�K<�����QK�"���|�x�-K?7��V����Ү���FZ���%�-�[�zZ��f�������*ʪY��Z9�)��a \!x~�i��XT?�GK�XJ?��X�?���#@A+�N:�1�[��K���5�����@|����XV��#;�uElڹ�LK����e?;}+�����"UD�;�X��w�����%{�LE����h�׳A�������p�	^j�`+Z�͌ݗ������%��Ѭ@��O=߮ק�5E^�JD>�]5�B:�.�$k�AI�R�UԠ�V��@�h���A���Ϟ��lT�k~R���_�A���'G�o[��;��X>�ȉc{�o��J�#,�R�����P��.N��K�~��9;|�7���e���>WR��@�H����f�ճr��;���{�NXi� iZی�8�I�Kk7-$i�3����37�i�gyKa �s��4P���.h�A�YP1T��ā��F���3)�h���#��4P[��P[�$*�Z�9�2�����Tm"��R��P�2��Ҧ�,["�*�CB|�z�6>f�g���p�~��	�����~�����lhR�����נg��6�J�d2�d2j�<2�����/rp;�.����֠I�L�lo���]��j��	�~��'��e�.0�\�]-�o�Ѿ	쯷UĢkP(}Z�[��5�>����>_����8�On��	�jP,}N�߇n�A��ii/J}�ā�S����+��1��_�[�"���5�5�֥�j\��ۊ�t��u^ǥ 9�<�A�W���d��gR�a�l��/�6;��./��P�2cX5|��i�ăq/g1D�~'e�
Y^��ldY��c�K��H���o�f�
�[��[���j�c�	��Y�
M{(n��4��Ѭ��N�]fS���:~=�4���_��i���4;�����l���2�� �E�-Z��2+�>�q�z!|����Z?B��rw�7[�^f�͑%�B	�y��B��Z J�L�m�c+��}��g��W)��w��.�A����^.�|�.z_4�h*kW�]�uI�S�����+˄?P ���i�Y^�0�m��$��j�}�B�E�>�y�}�6�K��ua�=�wg��EނJ�����.�⥠�-`}Z{�z����>$>���v�q������ϧ���f��w�^�+0�D��N��/�x�$���S���ͧmK#�}�|�</7��l6��o~�v}����F\uޭm�KT$�z�(�)���SH�B��T�x���҃\Eܾ�I&��'� V��ѭ�uC�B��9��$zZc"_̍Ib[�R�����j�{�S�lm/�\.z�?[��"����1��q��Մ�-�2%}��������Cs�ӈ�j0�ؔ�$�hF�b
�dnJDz�LwN�n�-���������@��*��Qa��h���]�('����V�C�R�R�шɖ|l���B�v�� :���x�������'��@�T�%G�/�v�0%b�.���=k����o11M� �]n�o)M������ eF�WZ;�v�M��2�u�=��P��/ݷ�6�R�I,�D���h4���h�Y�����Ϫ١9��8��j�p�*D��վ �Q�k=;	Z}9,����^���)��?�/�	P#�%�\��4>�]�[LAUi�h���p֮D���YT��g�]ў��!:�*��ITe/6A(�I��c�Y�|ֳ�1Ȧќ\�Π]�Kv��ru���e�O	�.
PYmY��TV�4� �FShY�
��j� Q��z�Z3�f�g���� �M&�\7���0~�b4b�'�Z�HaK�ޠ}��',}�e{*��15��(�ƥԍ���/a��P"����r��@e5.'�`dcjߕOq:��o�p֌t`c�SKf��EA�:inͩ5�液�-3Xsj͔�[R�����9��Kj���*�O��z>?/n⁔j��Ï�S�T�F@R���Sw5�;�Ms��Y80�͟�~~Y>�q�}#	��&i�Q��j1wTh�&:a)@95���T�Vۯ?�a��&4�&ՄAL�3j���B�캺�nP}�W�jè����}$(�&3���;�P>a�5�!8�d�%Z�<L�9���z�L�햢?p�R��֑bv8l�m�˨�0kL������lA?�^� �]��Q�aZk\���-Χͯ�ewUJg>�ɉ�"{��Y��n����_�٪o��
���M�{8=��'�؞h��m�E�����O��'^�Ӂr�Z<$31�-�8���)�脏ߞNoO��J�i�Ē�&?�V+w���縇������b/������vďK}��1�4y��d�}UĊ�W-�m
,�E��|M�8�!|����g�^�G����Q����xj���ܻ.��SR;M<W���&2�M$�4�*��I�nAn~�о��n0P�sx8��q~'��>Nޝ�~y~��9��Y7Mp�y5�C��-��+a��o��}#�`�/���Kw�R�3w�b�3Ow�R�CFƝ�z���F��T��FC4�A1    &6���p��ğ���;2�C�q#6�D����&*�5�at,��)cAM�Hj�B�XPrǂ�h�>�Ā���&����s�H�7�S�E����=�;��
�w�#xk��hߌ�6�T!`�?�S������D���rZ������,�h<��ˢ@�qg^ă<g\��y��,�����/���v��~r�8DƂ��eA��eA�eA��eA�H�eII��eIlI�eI����eI�I��eIlI�eI<��%�!�{K"A���*��g!�����"
k]���E�bˮ6�`C�ز��:�/��A�y��쪡�]�ә�9�����_W�t��Yl�U@>W)+bA�<����~W9籥 v�|� Z��RAd���h��Q#�?
bH�D�\�(���Q)R��$&�GID��GID�􏠂
������A��Q*�j)T��bҩ��E&R	�Na��r�0T�S��A��11v��)r�>JPB�a�?��+/��<��vt�Z�t��v�~f*�P\	�׫[]��M|l|����5� ��':�Ls����':�Lv����|'��D�=CaRz�&>:YM���=@��na�2�߭F�A2�|)V4�ZʴH�2gEb�L^р�)�W4 hʜh�2mE�Y�bC�'bA&�@���_ќ�lu��"b/����)A͔.<���ܮP��H�飋X��)j.�|>�q6o��^�����˗�Mn�;��@��ƣ}$JH�? TJ��*�,-,��T eJ��*P1eR|R5%J��jJ��д��hZ�J�(Y7�o^yQ�gܺ=�+����̭@��ǒ��[�|i�cd�@´����b�	\��i����r	2��#�h�i'�����TD���G&�A��~��O�5��R����F�RJ��(��ŤSDI�,�r�KZX.�@��#�yYs��)��2~�*��3�B���O���
DJk8J�)- � PZL:@���D"�tia�D ��G� ��5O!(�2z0�QR�L�@��N��Ym��~9?��4����e1=J������%0�������־B{��i�oV�#��9狲�n��'�I����J�+�T Z�C��LD����pb�����s���w[��|�]-�+��ǒ��"j,bޞ�Y7!+_dL(�{W|ȗ�f|�]���|�-���x�پB��s���v�}o�%i�<_�B<5��i��]S��o?]�־�#�%|�73FID��:->}B.�G��kI܉q[A2���2�X�t�U1�`�t�2���JW]]Sg�JW]S��JW]yR��JW]mR��JW]�RGc���D�Sc���N��c�+M4�#�4q!s���D��=�J'r�+M���#�4�$!V��D��}�J="���&~��+V��1�Qb�W~�B�'���OR&e��1�iQ�գ!:Ĝ�!
d:뮺��Q�r�UAuB�rՕCuR�rQu5P}O�q��D�H�q�F�h�q�BuN�q��Eu4���z<��j�:)𸪉��&�źU5�"��)�#��)Qcб�)q#�XŔH1�XŔ�0�XŔ�p�cS"I�cSbL�cSbɐcS�D�c1#�XEA�s�� N|��_QTXd���@�H��($ڏ��B!`�/�B�y�_�Ad�_E�fC�����e���NT�ă<'(Jj�L?VR���_QQb>�$~����2��J��]>�$�����8���*�Ѡϫ�Aw���X�y�%��u�U����5X����ꌆf]�+�:��2h���2�����pb��Jur8��*�z4BXtR�!,�:��F��.��#�EW�I¢����aѕF�¢+���a!���ZM�'���s��h1�|%��.�*�*�UuR�$���#%�'�=$�$�{�:*Z��	����O����}^TS�����;���"�� ��s��-Bb�f�4��h<�O��:�'@:�x ���	PT����#o�x�� q4;�M�8*���(���2���k�L��*����rtL��*��� qU&n�	�Te�� yUfl�	�Z�9��!
e2tVr���C��}m��ʯ�f��&x�F���v�����<-b�A�|������<��UȦ��4S�����v�]_�$��h>��-���|Ɋ �T
�׿^����V���Ǧ�i�>	�w�,x4T͂'@?�� �R���Z'����`�&��.��%H�>.���5R�.g���qxYjY`��ъt�L<�߸�"�.�M����~�o>��?��(����Q��j1����8�#AP���HQ��Q$Ȫj:��/<|"Ȩjz�ݚ�
��O���`��ţ�R	�r�f��?�k��ud���uI�ڹ��K������\�Ma)���T��u�e����� ⩚v��n�j�Ԉ�9J�d�܂�� ,ݽ���-��p�7dI<8/1يX���Шϔ%����,���L�����_!�āX�+��u{��G-�^� j�E���C�)�Q��)A��!`I���6���P�5�)A�QY	�4OU�wJAU��)A�T�7�OU&vʊ�0�)+�A���i�R	�ꔂ��S
�@�S
j��N)��3�NF�� ���Q@/A�_��KA�W��KAUr���j��z)���KA��Ƿ���q��YJ����ӻ8(����%q"��K���V�n�ｳ�Z9��$N�;I�}�\;���e����R��Z�<�"��Q�aܣ("A�=RbNI!F��".d:%P3ۻ0Ɯ�sJ�eZ�D�����@Ҵ%;%3�u�SQӂ������@��t�"�E�:%M�HsJ�h1�4�c�)�D�S2���N�Ҝ�!���a�)"�N�bN�!F��!.d:%P(u�� b����J�d��I�5"��zLd �R'� V���K=�sJ [���JQ(j�D�SRS�ŠSRS"ǠSRS�D�SRSj�\���D�$���ā{���F���	򝒚"NIM�cNIą<��@��)"�iRGE£NY(��+D��Yh�:MdQ C�t�E�4��,��@��
��R�+4�$N�9��h1�J"ǰS*��N����vJ%Q �)�ā��RI|wJ%���TbN�"B�:�����@��U�S�RWQ����»��iK�.�_�*ͻ����t�ʦ�����]@��U�w!SW��E%v�׏���c{P��gb�_������6��E���
�.�$îL�]� "��2A-���1 ͕Ij��\�$��2I��ÕI�G�f��Đ���D�Q�'����M-R��ZD�(�Z���@���+�&h���a�	���N�kZP��5���&H���5A��^���i^S-��"r;2M��wd��;ۑi�@�#�ā��&>�;2M$�ÑibC�)i"ĨS�ąL�ҦN��S�o��>��S���)�5�W��)�:���zX#L��@Դ�O�X�>c�����K����@���[�
�L�����!���D�^W'��]M��w55��������]M���j�@����w����0��j"A���SbC���)b���)q!��iT8U��Өi���Өb�D�Q�T��;�z�vJ�K��4�*�)i�3U�SҨf�t��Q�T�NIĉ$���ŠS��c�)�8��tA��tAHrJ� ��tI|uJ�$��JbC�)�D�Q�T2�*�)q5�h\�F35�A�n�q�̑���eZ\�F3=�A���נQ�̈k�(j��5�8��*�Ű����n�".�y����./!��^Bb]\PӏvqA͝��A�4)Q�J�� T��(����(���� a��(
�I�РZ��(�ɈР[��(-�i]\-����1�$q��!Hj��y�$
�yE�ˣ(�øGQD�;���sJ�1�q!�)�DiR�����?$J�*�h�*�W�?tL3��h�3M�B�A�4�
���)4�K���h�1M�B�5q"�)i�ŰS�D�a����N�P{    g;%CHsJ�8p�S2ćq�d�w8%Cl�9%C�uJ����@�4I
��&�ЀDi�-��(4 d�1��L��Ѐ�i2�8-�;ŷ�.��.�JӠi�LM�M����D�^7V%�ܘ�AF�̔�1��̔���)���3Sj�\�g���/G�}??��f5}��4Sj�{���R�:K3%.�;KS1"��D�1gi
bD��4 ]��Ȁni�ʑ�Ҥ*G�K�ʑyӌ(G�L���2M�rd@�4yʑ%�d(GLӯ��8���J�Ű#+�Î�$N�;���;ۑ�D�4�T�rJ�a�)UD�;�REl�9��1�*�B�S�J�f�ӕ,��M��W���)�tuM�yS��ʛf�ӕ1��M��a���2LW�4ћ2LW�4�7e���i�o�0�h0�+��Bf�L#� ��� N���4�8��U�HbI�MFU�kI���4��1�_�Hb�@rc#�'�ݮl������#^SA>M��?����;|I$���K"Jf�,#�+	��FA�2E�H��DE]b�"�d]��|��:LW5	wu��j���0]1��sW��ʤf��G��]������:LW5ѻ:LW�4�wu���i���0���; h�A^�z��YÁ&vd��1��5q#���b̵�k7ć<�n���vCt�˵�L�k7D��n�+���3�p��s�5�%ӵ���oq[��K,2�O�bFn1�@���BL-0�k��鞹ֈ�x�ڠ��m!���xč��)ڏ��zJ<�s����<ϓ�Sj�ov[H=%�D�n=%~�x�zJ���(��u�)1��[O�@�xݺ Vezݺ �%xݺ ^yݺ �{ݺ �D�n]]�nݕ`��MuWf5�7y�]�Ռ��Qw�V�s�GݕZM�&��+���<ꮔj�n�ªɿɣ�J�掛<��j2o�KbE�-�&��Ѻ$v�cI�s��!��Uđ{�]E����UĤ\gW�R�]E��UD�����+���Y�f�~�yN�u�O���݅�Y|�j6�ǗvG�<|�~J¬p����}��#'�A�.�ʟ���ɶ�����셁|{{���ff�A���jPjE��o��� j�k����6�=J!j>y�l_�����n�7�y?,^��2n#���5��}c��X��e��N�?4[�*�{����K��뤜��p8Y��I���s
|N���0{ܞ���W".�Q��k1���kI��\��@�iJID��2 
w8�2:��=ˠq��j��|'�{���f�><<o?��9�ӡ��c�^@.`�FA�.j�<.��7���+\����NH����
�w����ژ��#��5���d�t-�&��+�Qr5�"7�iW�)����Eiq}c�+�GYy��C!�>d^��;�ڮ��[,�V}7�� ��+�޽4��~x�<�?��S��P"���^,��SPt�ˈ�Roq-6��Y���o%r�����/�7���p��O���k�,'?� o����k-�ߪ�f��C�0y3[]�'�훧�g~qau{�e��o�i�kx�����$b�f�8~m��w�ߗ�%~|)`��׉���������v_����m��|�|��4}
�!=4�6��9��&>������5�`ຠ����^�3GJo;��0ixﺮ�)�&V��qM�0vb�ΐ�n���SkW��[�)��P�G�$�A�|���r���<�io'M��r

�ts��O���vƼ��-�<yݽ��7ˍ,�8��J)�_F
>$��-Y`�K���e��lW��/���|�"%.~`RđD�U��8�����xA������ѕ��rZ�ׅj��b��z��|����p~)�d8F�Z��FĤ	D�ڧl�����z}��V*���9�/{�����hAD�O����
,�#�݀�8�ɶ�Sٞ��e�G�|Zͼ�k�!Ĉ�;_p������a�.�g�p����ą��0D��p@v��YSeZ����BB�G���M,T!4gt ��b3F�}-4ct %X�o7:�d,�7@N�"ct �"3F����>:TDŌѡ"&�=:T���ѡ""�Q/ot��}��� &�?:bN�� �4��AG�FA�H1btt�򙣃 .���(5~�� ��9�ȺRf� �J�3:��+e�� Ү�9���R���J��F�}������Rf� [d�蠈�飃"*f���x�蠈����""����7:(b_�蠈I�����4:("M|t�đ��A3FM�4�|�蠉)��&J�FM��9:�n���o�@p�Z�|���[b"��h=w������*vr���X��ώ/lT����S�m����ڗh���w�ݷ�v��(p[P���ߝ���cZ[���m�:���#s��?د<>q��5Th���{�L����F\�t�ym3k�ɩ��B��}j��uoq�	]}ن5Dm������F_�d)jj�����K��q��6nK���u��6��Q��^���Ԯ�aV��a�7WLM�z��KFӬO�>��԰麸�R[�]�?\�o�_������r5{\/KH9]jQ���Z�5�����юhYL��㪽��//���dl�bJ=��[�y�.o����i��ʐ�-T!4c�]���2dz5͘j ���� aU���Ȭ����(����ȶ*C�/@�U92}Q���EATL�j1�ީvQ/����c�w���7�[��7_�w��H94�.J�a߾,!�}��$v%��Z(��eɖ�q�]3�*w	-ؘ(�i����}�����%��1���$2%�wd�[�Լ��V������,�� =U�(��*K)/@QU9Jy���Q��PշS��[�7T�gU�R^�0�r��B�� *f8hAL��A�e��D�A-���Z��� ve8hA�rЂ3�%Qd�AK"ƈ��D�!-��cZR�f:h�`U�X]�����dV�#V���,�� %U��(�*G�.@JU�N�.@hU�P�.@yUbu2���E\LwЊ���1�n����Z)�&�;hM�KvКؕ�5�g�Ak"̠��D�1��#Z�����9hM͛�A�UN/��1zi#�(0�� ժa�Z�@���}��V�h-�@��� �m�N�%���Z2h>XK5�&��JGk	�Z����¡��x-�tk#���5�%n�mJ-)�DkI�]n-u��_	u>ѹjS&��j=Z���j��"�&��%-�W��8�#ht>!7��uZ�yg��Z7����C��/A���A��иc|�}{V�� ����wt��J�]Y&�]������2:� �����d7V
�a`,+�Ă��R����,���4˂>�aʂ�:�Ô ����;L	r�����ꩿѨ�ÀN��/�0 �Z�J���h�ÀjCtPk��a@���§�wv���0�aJb�H�)���:LIM��aJj�X�)��3;��ڤu�C-���-��Àj��;��:�À�iQ��N�0 ^Zۄ����wP#-�#�CFF:����0��<��j�X��ԙD��9֮��Ɲa��ٹ���~{�J6�XN�~����K�>{	z�|�G��H�b�ˋ}H�&3��w��o��s��g��|����/��x�&���
я>��!��%t���X?�w����w��n��?H!r�A�1�K�����������d�ߓ7���jyva)�$uPJf�zM�[�8W��m�U�z����e^��c���#��~E%(�a��=Z�[�;�{i���UG,��~�
,s���VNoc?���y��0A)�s*7޶�J˕�� ��۟�}�+����-t�fV�&b�e���I�l9UP�j��w�~�o����Ƨ3�^R�/�%-�,�� �Ƈ0��43"{|�L�J��|�%�𰽝339D"S����^�b��휩���4��Wb
�>���1L#<�2�L��;5L�lwj�`v���	k_o?�)+-J�y�|�7�] 2ha�ww9�ߗbϢ� �L�خ�*�i`�<y�j�خ�֓�n�����G    �|n]���\�N�O��e� ����\7q���/�v��*mF��&?5�f�b��u��m>�/�a6����w�������^2��|��ͩ�8#�����w��a�,n�i����鞎[M�V�t�j6w^ǭ������^؜���sۋ�Ӑ9��(0�&w!9?4�ղo�[��.g�������@�����v�2#nl�����r��L�]pc��~8��?<���f�?�0,l�����Ʋk?�xة����W�v�܋	������y��\�S�����2y�Y������zx��QwGþp��z�.hȯʰ��'�U6}B�yU���e���d6����S�/`��� {�'�%�+0Mb)ɬ)�#w/�*�-�-_~�/����]]��ώ:3��_�GH�{+���4@��~�qy��� ����]��;c��2�4�A�H�]PǦG���*�>��h�݂�<#ze簇�i:@A��"((֦�L3۴"�4�.o�{��i�pV\UD&�U���.��ͬ�r'/\����O���"�6����~�L�:�����
�1Sb)*�)$7&������(w��}/Ȕp�v?��YN٩�����?�i�==�<���[�íP.�y�B�n����w�2��0y��G0a���`�s��/�mb��yLw��ͬ�Z2q�����r��?WM{M��%B��$r�ڝ�4cB�rv�?^��>nK�>&b���:"WI�I�:X��6v���̌@�m���Y �$zx�bV��qK�>�&�b��Yy�n,����F�E`�8g*?�Z�����N&ľ���2(-;y�-�
J�U4뭹�Em	�#�_�3\P����A/��b�9�c�+�>������|��Ou�l�X{�9�J���7�e�5����Xc��^�ҫ�[���K���^�&b=^}�m�ఛm�e��n~T�z��b��n�����1L���TwL�������a+�>IL��a�ק���u}j����21�2~;��2>e`7;�B�ڭJ��,ܪa����*��B��˿�������\���Y�UQF���~����?r��>�Ude�簊�\���h�;�����;�,�x�aA9;�b��Ǟ��_�]�OS�f?�}ƍ#?���B��b�dt1��3�{��JP�;�Q'�{�����Eh�5�^�F��=V�>�s{�`�Z��E��U����ֶ@ ?���k���%W���F	ְut%X�ֹ�(����ښ�|���8	��;~� �ut�!X�ֹ����9_���f����혫��������{w?қ�z��������9�8MX��r�� ~X���T���k���%������d)ܔ�U�z�)��հLn�N��?�IT�1�	V��o�5��7�ڸ��m=$X[7�d=$Xp7��!�2�qٝ�t	���|��k��_,����{�,u��c��H�o��k�p��'���|bq�Tcdi�ܳ��қ��e�d{^��}�e�~ V}Mg�ި�M�N9��L>5<���[����
��e{�+ 
V��P��~�]�S��`���Q�6�E�΀��"b7iZ(�S�40��FǛ�ɗ{HB�����������0/��#� ��.'�њg=o/�<���]:N�!�g��Η^��<�<�z�AA�+pq��-��*|����W�����!D굫������q�|l;w�]G���]�6��u��ލ��P!)2/e�e�<ȸ���Cd]�jK������j���6z�Bz]�j2 ���jMC�_�j!!o>^yY/��8��at��9_&o.�|�^�C���ݓ@�L��S�"ӝ��^��o�{w$��nu�9_x���0p�-W���.c=I,��3��6�cU�׾ӣT �]z���9��=ն2�fIrw�#n�Tw�Hw�$�;p��ֲ,��*	���WMȜ\�jB����K�S	!e���	���UMH�a�hB��ܣ	)3��(��)���6��ٓ��41�X���t�5���dI�����c͜)�]��)BG�f���v�r�*F\��2��t�&�L�"���9Sعf�G�)3�s�rʌ)\���,��cr2"��iH���%\F�ۡ�����ӐF�%��=#>K!}�|�,B�$�,Y�J�Y����d�*�dr)�gIҹ]���5�+�v�L ����Y�$��!G\����*H�v��� !�Y�u}R�$��r�P�� I��+"wu)I�ve�̃dr&���!��A���)UH�1�R�T�)UH��R��I�)UȟD�R�����*dG�O!�إZ��7�{��b�o�:��4����$;pb#�P쐱F �יf6i��K�s��V���>�^{tX'����P�mU�
�mwR�&��M �h�: '�;���(Y�pv��d	X%�v�U`�0�bX�M�$�(gJ��L�R�~,�S*֍e���5d�i�f߼jgU��c��_�5���[��[��a�Vj�*��Jj��!��%��M�J�Ip),�4��j��q)��d�q<<E�B��"Y86	���b��X	69��%a��X6q��گ����2�:�)eRu�lʌ�dqؔ���q<BG�0��#Y6	���`��;Y 69���_��;Y6q��"�����	�>��_�"�a�<��ً��aE K�&Iv��?6�NI�$I.�꒤�2;@]�B쎽�r�����tE��A��"I���q�$�:˄#^�ԛ"�י�՛"ŷJ��"��J��"շʧ�"!��SJ� \eSJ�\� ����1��@(+]~E,��TF� 1�����̷'�<�7�Ts{ξ9�0�y���c�f{�8��R��"�&����N4�?&��"@>������BiI���CGa���>~V���3��*�v<�(�*B�LS�TEH����a�"�K��EȑL��L�Z}�X�;gٔ9�RS�qŗ*� n�̧~[7G9��`0��'�:w2e*�ݲ߷����<����%��\���-W.Z��˹�aJ�����KnﬄK�d���¦H������u?/BU� F�*l�LW��ߖ������bF���Z1ʡf��eV�V̊2�Y�e��̇2�T���)]f(�l�]f(�$q^?=��'=� ��p�
&C5Ը��Pe5�`nT��+�Uj�2+��ƕL�h���̃�{%�.s�o��i�W�� ��V2�P�Jf��j[���m+�"�m%�B��-�!�`K)�An�-��g9vZ2�p�*�jW�,�Y���2�]B�5�b&D����s���>�����z��qS3%܊����߮���^7=O�Lw0�_�].��aOzw����u�fZ%�Q�i��\Gi�Ebr��*��kf��f����!�O���N�\#3z&��)�Ǿ�0!�GX�a.�aQ$oV�������/I��>�]IܬL�J�>N�h=��4��ƭ[1a�<���������~��?�H�t��t7�9+���!��Ӛ�Ni��_�������X��G�{C���I]'��iF�	,vƷ#4������N`��b���p�~۝s�C�/�m�����sȴ�N�5�هV5��M��W��$�N5��&w"�I�c�5�b�0�&�R|�a@MJ��<�I�#�5i�b�0�&9S��$i:p|�&�Y.�q�O_����դf��#���2�ː/�A��y��ː)�A��ْ�ː=yA��ٔp�P�!�cIu�)K�ː=#���y3����8��w�XX�E�
i������*�[غ
9�������p83�UH��\ �
�c���cɦ���Ԥ�����U�vBR��*�9!�Io#'$5��b�&�U䜐Ԥ���	IMJ��L{Hf�+���0����C�ɒw*Iː7Y�)�9�ȐD�#�9	dȘ��@��	dH�ё@��I	dH���@�tI	TH��@�ܸc$P!?b#�
��9(&L��jŜJ:��j�0�V̪�àZ1���j�<�8�5S)vTk�O���5�f� ��L�у�Z�\I��:�B���!-2]�Y���j�)�Mȣ1�lB���g�h    �=��?)�ل4Jw�&$T�{6!��ݳ	yt�{6!�b�ل��tϤ��s���_�|�U��+FϽj�|EιWM򯈞{դ�:�d�H��?3�I�Igf5ɽ"�̬&�W�qf�LC���n�4�O��5ӐF��[3Yq�frf�}�iH�1�i�!i�ܧ���Ip�f�&�}V��������٭a帺gvkX.��5�g�5�'�5�[T��1,'6,[�(�X0N;RlX.�9RlX8N>RlX<��q��\lAw����if��p�if���מf6���̆�e�>�V�NB��e�Ke�9���a�9���a�9���a�Y��T֛��Ȱ ?�mXe�>�mX|?�mXm���ZÊr¡oÊ�_������s�V���V�e��ǰ�,�Y�V��g���g����g����L6V�η֓-f�l�!���7,眉7,"'��7�)۟��ƪ�]7(֙��������+�&cLd�9�(�a��$���0��7,)��7,2'�7,.��1��csט�Rr<�ϰ���gXP6K�	Y+�&a�cm9-ӁaY9'Ӂa�99Ӂa�٤p�4��8V��q��e��D�ڱ)ә�brB��j�Ō2��䴤�圤�e���5e�g��w��bX_�p��8k�&c�êrB.
�²I�簤���°����°����°�lR�9,0���9�9�Sg��Sgҙ�X�iM��0�IB�_`Z��,3Lk��H�iM*�0�Id�9�5��2`Z��,3Lk�ej�i=�2��R!_�wP�"�M�J]�L��A���-9;(u�'o�.B6%��Eȣ������x���=#/u�fl��ː8ccL]��Ic�2�J�S�!G�Ƙ�ّt��.CR�NuR"p�ː'���.C��N5	��E��$&˄�Ԛ�d��Z��,�L�IN�#��5)�r42�&�X�D�֤#�hdjMz�̈L�I8�㑩u�'a�!;r��%/̩!o�FR&s�!���r(6���1cC��3:���2�C�9�2�Ȑ4�C��8�Ȑ&iC��1>�Ȑw!2l��qA2�o�ZKfKR�j-�0�q��b��ǩ֊92�Z+�FF�j���8�Z1)���Z���S�Sg4N�V!W� r!Ӂ���X�,�fq���s�:�ј��!{F��y4�uȟg�C�;k*�Y�Ti�Z�\w�&���ڄ<���MȓL�N*�p�I���5)�r4��&YX��֤�h�kMb��p�I���5��2)��&�W���$�;\�:�K�$����FÓ�:dQ���!g��n�g��<�ZMYN
p���6�~ׂC�$�]�i��w-0�ǘߵ���~ז���ZӐ'Y~ז@�I����:@%z�jʪ�xd��f��,'E�ZX�҉ʢojd�E� �FT�{Bj-H�;��jp4�֚���$*k�_Rk,��AH�-��M�,(���Z�0�}�U䤐ZS,�o�|�Rk�&@���bq�)+�����RBv���Ĺ����M1�k!̚䥻�2{F�x��]�Y3&e�gaL��%�3e�xՔ�c��ĳ@���ς�4w,�l)!qb,eM87�ז���fMrp��2{F�[,��3�b1̘���jʪqF�3e�[,�y#YʪqB��1i���,Ȥ���!�k�(�X魦�'��ZX��y�:qjH�EV2�G�'�[�@w��%�h,�5	�I9���c�-��0��d<l1̝��U�X`f�$��'�$�@fO� �B�=AĶ�Q|�e�87�ؖ��I"��,�[�g4��b�;)A�ƬI"�`&Nb�E2sҲ�Z �g<�؂�,wD�R�G��ck&�r�!�G[,�'a����x���0w�&h�gD[0'y��*�I���f��lAL��&h�#GÖ����ܰe[��]�2;�;�������۲^m���.��q[B�.�-�J�;�)��U �~�Ls�]R	n���8�j��O����ζQ{+��
��_�`�+M`���5�P�sR7�$��c�ϳ�n�O'u�a��nW�usx��,�R�)��r*��G���|����a�����E�����E���.���!�˥��W\^�����pr���]|a$�׺�@Ͽ���h_e_���l�֔���ܖ��7��6�՗���sI��s~z����~�7;�]5��<��ʊp�d��[2!cIЭ)3/3	�-�))oMq���^���2^�\T�����Zd�Ƈ̒�=dVLJu���jv8,�.cf�2+椊Wf��H�V�Lu������;[�)�2��[�R9�:xӫŨ �8z���� v	 � ��:0ͬ��ݽQ��A��äTi�6^$q;P�2H�v�����p��_˃���_-bAL��+L�lW ����b��4[�m�1�&��=M2Q��H�n7�,�����=3]�\�����]�dM�<�W'��<�r���|�<�M�IW�v�o�����i�`�@�w
Y�	��:���:!Q\���NR������r���%A���~yY�[n��w �';Tθ�f���&�����v����(�$7b� \��=�n]~�@o���}�UA"��k�� Y\��	
��U�>AAz����;=�o�Ǉ���"q\�톱ڒ&��*0��N⓿y�Ư}�f_�����-��#�g�W�n�%A�A>&�٭��ɤ�٪}�U�$��4�%�({�|��d�������n� i�HD|2gPm/�z���rAa���T��z��I^��H(P�������lb"��H�kNu52�#j$Pr� �\� � � �wh�ڱ�+w����;��r5��/�ٳ�!D�Yu.��YumY9�1�h�t���5�%I�F�LI;���p�xP]��2&�z)r�1I�u.���h�K������g�|�6u�3�]C\ބv�D�'�[$@�VoSx�ۭ�v���8�pYb)@WW��F
���H%@�V��s�(Dt� j+_Ṷ��e ���UL�F��I8�pI�T{�[p)�n�˝�p#\����2�7�K�P�.Q�qC��	���)�za�n9S��aȣPa�� q��ɥ(�,��d�@r�&k0�S��-�'����I*.��HDq�F�,I�ˈ�Z��x��bݸK#�`�\��s��'8�+�5����
T�j@� ��Q5R:���X%T�j�r��1J�
V�jH�@"���*��T7Q8M�N�(�*��T�]�$L�h>sJ�;��&]҄�t�l�%Mp��J��J(�*��P�4�"�h��֝	���՝	БUD� 9YEԎ	АU��H���"
���*�`H�d��*LB3.��UDو �XE��P�UDY� �XE���U፜gěզ�.^�>I:���NJ��뛧�m��V��Vv��;���Z�jI9-� �Y��r�!�q�^�p�"��P�����B�A]ѿ5r���kdV��y>0.jdU���@������"��_䐸��Y"Կ�G���G����2�Q(֨+�Ed�ʕ����n)Կȫz�;�=N"PU���~�@Yc����h�ob����U�:%���M����M��c� �k��qbG���/��m����������1�8(AC6�U�eq\�9vw��[=}ד�� ʁ��/�����]�L��G����m�{O��4���هͱ7�$�v��=JP����7�^h[8�z����DY�.~��f�+���AsP/��cDe�}��Zڎ�����e�>���n�qԿ�z�����ٗ��i�u�c�Ժ9�<�)\���hީG[��cz1�o~8]��\/�t�ؘ=���i;�u�=�H)\&<�1�t�Ϯ}��?u�y^l�n|-�ː?c�XJ�2���̗���ˇ�!����.~�ܧ�v� ��i�p�piPf�,td�,��M�ص����_�.4趵��Ki�޾|�۽�~D�Bp�2�����8 x���~dM������f���nV7�����-r�N� #]M(q��(�OL�?^��Mx�֌����ze�j�g]P���D�$�Y�� 3  *Fewh_���Ѽ鶻��^��~s��P����?	�7�;w����A�E#�F��o�$v�D`������Չ_U�&}��p3�d���$�\&v|��88���O����B���~����#��M�6��J�S��lMT�Q=����g|݊���"�]j��9"��Wn���_od�}�����hVs��ˀ>�û5��E��s� ��rn��7�����/	n�ؿĜoK��=�;��RXxl�qqT#�Q���j�9��<�ɹ�ug6b^�x��5��xC�IR�7�9�뭆�%zK1
����v�zgU��t�;�G�*x=u��7���:Ur�ԯs�n"~��o?ƇHn5�	'�~��v��0&Bi�����TB5u�T��y��n��}��
���W�r��J�Bf�7'�K]���a��HsX����Y�%9f���_m�^F �,� o�)n��{cv�b�/�����r���]/L�U&p�S7�� �Y`�s`�����3���r�܌�b���ټ�k���!e#��rl?r���{&aM��bV����S�v�Nm�n�c��F����j��}s��"���s��|s��.훫|�e�"��~���e��]��SK[f�;:/�Ϩ�q�}Y��6ŝD���~P�{�J��a�������t��	�����{M��G�6������w���a�Kk�^��T�ǎ�,�@^97��TQpL��M _|�,� ��,Ɣ�C�}W�QOJ�n��
�1s�Ъ n��BqlT�����Qo���"�v�]/�$�7�\x�h�x���=`U	�QK� 8��C�ܮ�Y�
��Wu9d6��ӝ�K{�ob�V	※��?w���V������tsn�D��w��ߏ��tz����W�r���O�2��1�+��W�\��_	.N��X͔T\*��1��E�q�5��x�^��]j/�	AV.���	�7���Ac!Ӏ�V�ٜY;��ʥ���t�క��v����~bJ��Fg����b\\I�����&|.��Ktq�R�
���HnUÍS��96�e�1Wt��	_7ʒ�%v�X�������D:˗�ly2���X�4(SF��٫_��3�Q�z}�<��_������Q�<0��Ӽs�1����tǚ��^�M�ǒ�1ް$=�{v��顱Vi̿�{�,�1j�wk���'���$Z��&ZO�:��o�Vޜٜ��2�RP�͘���WN��M�c���ճC�"w|q�~��n�n���k{Q�����A�C���]��{�=w[4���®���������T:_θǙ�XK��W�Uc��N�'�눵�$�ҁz]�z���c��.̳��!
UrT�����:<���f���ڨx�����J�.
�����y<���k�x#w��.E��W���+���U��S׿>	OVu͟c�v7����8�~���&�+E��Ω��peDL2��k;�I�%����ۥ�#������ɹ~�y# �qÍ[��0k���zB�@�	�W�c#�,�cҙ,�7�q��%�Ks�k����O'�9�����)C���v�@��L�l��u�}��n?5S�c�� V�Զى �B�v�����NO�W�;���zC�%K�73�wm$���u��y\�aJ9/f�}2ҥ���%�����sی� |�>.�gۛ�Cw����.l/�:߆1Q�) �{R�t7�$`�N;�ɖ���R���/�N�{e���?N��Y�9<!J<�G���k6��{w�M�mI,8�ʤox?%n	����A
��̢A
��x� W��G��o��I��	�Xው%�ֳ,����L_��9��aJn>��]�I�]R
��ў$��f_כC��P)�z���鯽�������{$Tq��������YL�K�j��:�p��AZ��J[8A ��#wX��!)�H����
L|���!���Ԉ����ID��Qd�{���=�q�u�[3!+`�|����}Ы��)�[O��U��ZG��pZ�CK����/�V�{2��8Hi���~c	�njg�����=~�f�d�u�O[�k/zJa�`ď���9 ��,7,���b�<tϛ��&��� 0@�K: ;p~�TY2ZT)�A6��(�؄�@��d����Є�@��Yv �~��@�[���82!;p1>;P1!;(`���A/g��"�f�K�
�7�0��저9Q�Ai��AGB�A3"�C�f�<��j�BLv����P��������ف��R&e�K����+eRv`��&d��jhBv`ꮆ�Yv`r�n���S��o��f&kdBvh���١*&d��xuvh���١"�eʁzIفr`�Tv��tuv���(�x����@v����#Bفr�|Zv���� Jx�����@\7��́�H�Ɂ�<}�q�x���p��p���E�٫����{���K����H���k ������8tQ	p��-$��qW4� ��g ~�^�@����Jpl�.N%�:�N*�Q2P	�����{�b�\=��S	����Jpt�.O%�ܣ�S	O�LU�����JI2=1]�Rdzb�*%��ĤTJ��	��"��Y��dzb
,��LOL�����LK)2=I�b�T�$P1~�M�x�T�$��l�����������[��@��i�N���7�/@`W��,I�ߗ[ �s�����4/P���á[|�1�[{V��dA@��@�o�l����������SS)I)'��R�RNLO�$����J)J91E�R�rb*��RNLo�7Tʉ�����f)E)'\��
���0�� ����Z)gt4���k`WB���>s����(
�5#�k �\���߾ ]�{4�`)E�&��R�XMLf�����JIb51%�R�jbJ*���ĤTz;����Jo(VS^)A�&&�R�X�r�bt�V9P1>@��xm�V9�26@�H9�U4h��b�ʁ]�Z�@�� �r �\�VP$�UĘЪ 2�hU��=Z�޴ ��>K4*�Y�+�\W1��B
�bR-��F�)��/���S�cB-�ykn���߶VL��?l�%��j@���dKj���JK*���N�~�ۥ��u�K5�z���s�Ą[�cz��T{{�)��zU�b��˝�ۛ�9q?�8��r�p-�)�8�ֵ�hH��>N�Y�	����j�ڊ�l)&�*s{�����9j����Ʒ� Y���̞�-P�'�jn��f��=�_�<�x*:lEd>&�*�C1��P+@��\V�_ύ�
\���*p�o�T����DS���K��~�0�T749`�N�T`�01T[���jTp�05T��A�mĀa
���>5�#�s���C��C��C�x߀!pu�a�����C5����Q���a2�6�0L���q�i�0L�Ԁ���Km1`�*�!���H��n�(��܀Q����Q�����1F��}�W'&2z/�jM���Ufn�_�c���Zl����=�`�6�B��X>���`4��]��������O��o      �(   �   x�U�K� @�����B�nc]�"#%��^_�2�����qj64����a�A�C1�Q���ym�C�vm��U�HʩzxLH�����%,���]$���1�S$�c@ɭ*���(ϧ*�$$��. ���J��>� rs�	EV��U���\��\��vfs��lo��NH����=!�Ǟ1�&��      �(   �   x�}�M
�@���7����'(��h�u�LR��[��*d��	��I�wL�_}GPPW�Q�ȑ½ciO!��~\:�%�u��_�SA�q���⛩�B�I,��Z��!��AW��y��ރ
�7&�z��e	m:      �(   �  x�M�Kr+!׭ch����0p	_����� ǡ�9b���F���+�Ãz��=�)���<"Oyjx�W�S^��yʵh|�ƅh#z,Dj��Sc��\0ˀ�S�Պ�V=<�j��]Q�Gߤ��f�;����-J�Z/B֋h�7J�EOJmF���4�2�vt֕�pT��+��sp�4�'ۛӀR,9��6ؔQ�-����Pj��FP#:A�i@�)�ʷPb,x�QS� ��(A3(��W�i@�	�ˀRl�U|P5�6�f@�H�u��ϓu]Ӏ�"i�ZԎd�V1����e7Jm��JJm�[kPj��ZˀR����{�� ����4vP#i�i@��"��(��4j)&n��ٗ���	5���~??������3�'͵�w��������8�YO���[������o����;���x<�Z�      �(   )   x�3�46�L�K��,Έ��/.�/�,�t��"�=... ��	w      �(   �   x�5��C!��.�H��K���~�HH�"�1Ø����@���Y��)����Sh0E�6����p��6�W[pU��7!�A�U���
_BV�6:�tB+�����v��tBaﭰؘ��g�!����.p!���m!G)L�^�p^fKde���Y�����?}A;�      �(   Y  x�u�[v� @�e1�j��&��� ��4����_��9��<����~3��K��F��
�(�Ei���:[wM;:4:Ŗ^�zɻA�m�����C��.��V�V�ڜ^�{���c��+�}'���apNfY�� �Py���q_p��f�J��Pp>W��A�6�����4�
���7	�Y��Z�ygZޡz��o����Po��X��(����]��b�6Ӹ�w$a�r�����P3�z�^ck���a���*���dTHs���*c����-/QBC����CX\U�n�aQթ2R���/'.82�!إ�)XY"7����_�#b�      �(   z  x���Mn� ���Q�AƩ�r�� �xl�
L8iz���?j�7$�Ǜ�Y�b'�]Qm���o���M���.�3�_������4z�;�7t����UDr��A�&J0]�'��X�3�"'t��m�ʏ��~��}O����q�(�`'V��Ò�pR�_�:0| ��,�+��`D����^e����<��GЬaD?��KG�f�����]��\�������&���]��L/G�Y�����	�X�U�`㤢''(�'ޣ�#���Bڞ�	��,˺�_���i��U�*d���\M��v2�:Q�ښ�m�/�!!����w��\��r+ʍE7G�	�p���F�I�L,U�	v��?�U�R�Kg.�#g�}>6&      �(   �  x��VMo�8=+�b��h��&��8n��u� AZ�i/M!P"m�E-9N�]��!�aI����X��gy�e�Jƹ�x��?ܲP$ީ��D:���P<�8�u�=����跘�C���:K��3d~>}��� {�"*�F�����R} |!�����|i�����hc��Tʟ-�Z&�����	j3�j!�@; �n���3k��:��h~v����ؙ�G�d�n*�M���m<R��n�t��*�&X*�2�>���ds*���L<�̯�PSD�gn�v�
���,H,���~I.�13�0~g�wij��������Qb"���z��&�⭃��D�!�9�K��\��	��=���q��|s����t��)z3�X0^�PW��x1o�A�H��i�i����+�m����`��2��t�?l�)���a�A����ma����
Ge��<w������9����-�w�x�S���c�dB�bh� ��Xp��:/X�r-�@_.�Wn��J����`��!QK�I-������қ�i�y���4��3`f[pe}�k�p5�ɀ�U-�oK��JQ�7�Ҹ'm]�r��-�i���S�h���n�4���-I��m���O/T�'�� bn���1c0��~C���X�ܿ0��,�Z��(�L�_$H5j�#��"5'�4+�#CIWG[�����e�Yj$�W$��jC)�Y	t�ߤ��N�Ş8��5qSޒv���QA(@��RA���a��+z�޸�f�T��ǘ��������w��4����,߼�
��e~��%=˪��S��ཽ
^�n3�HY,s��g�Ta��0��j�,y��ʟU:W%�h�5�����M��S%}���ۊe��Y���N�1��������K�M|W^:����v0�(�� F�LP^�V�����[���w�ڦh����c���}�`XA)�Ӿa�@՞������>�z      �(   1   x�3�,(MJI,I�4�����4�2�q9-!|c0߈�� ���� v�      �(      x������ � �      �*      x������ � �      v(   3   x�3421�4202�54�52S00�2��22�371����50������� ��      �*      x�3�,�4A�=... �      �(   q   x���O���L*J,�T�OSp��K/J-.�̩0���O�K�/�424��qvq�t��,-�M,J�L����O�I��w�q�JN,�q������}B���rR�K�������qqq �$^      �(     x����j�@�ϳO��5j������
E�B��+�����1!)mz���_>�x�ñ�J���٨��M;ƀ�*�T75=l�
rȈ&L��˻��`�4eZ���Fx��Nx���P%��2ϖ�)*(�6g:̍���f�Pc��k���L�;�Go$���yߞ?�ehaKSt�L"(�y0�/υkp���H+D�=J"����D���h�.�?T�fu-��E<�D��[�0�K��ʴ�5�B�ǋR�>��      �(   z   x�3��,�I�4����ˈӱ�$#���*��rsz;�q3���L���@AK�`q�)������T0'99�ˌ3�4)%�$$R���2��,I�U�, g9�%��=... >3�      �(      x������ � �      1*      x������ � �      3*      x������ � �      /*      x������ � �      "*      x���,N���99�y����\1z\\\ m��      $*      x������ � �      (*      x������ � �      **      x������ � �      &*      x������ � �      >*      x������ � �      @*      x������ � �      *   ^   x�%�1
�0��9EO�%:���*�"b
m:x{�.��]�(�cX�Ko��#�
����+j�^���H�e@R)�Ҽ�;�]ѥX\~�}���$�      *      x������ � �      *      x������ � �      !*      x������ � �      *      x������ � �      4*   �   x�}PK
�@]Ϝ"'���PWB�_���D��7���K�'	�wI���^�%�}��2:��fעj���J^Rus�ζ.e��]j���0h�G�1lnd�7�]���'D���a�HD(r�gF�VwX2S�l�W�Eo���~XZ�c��e����_2[��(=�(�Ɛ�#��+��4�~/      6*      x������ � �      :*      x������ � �      <*      x������ � �      8*      x������ � �      �+      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      Q*      x������ � �      W*      x������ � �      a*      x������ � �      `*      x������ � �      N*      x������ � �      [*      x������ � �      U*      x������ � �      \*      x������ � �      ]*      x������ � �      L*      x������ � �      ^*      x������ � �      Y*      x������ � �      _*      x������ � �      V*      x������ � �      Z*      x������ � �      O*      x������ � �      T*      x������ � �      S*      x������ � �      X*      x������ � �      r(      x������ � �      s(      x������ � �      .)   '   x�3�4�@=.#0��3�<0�ʋ���� �:      0)   �  x�=�K�k)DǮ�THB�^z�+��G�����̕__����o|�������,>5�+�e1_�7��a��|�|_y�
<�gƧ}z�Yy^d@�z{%����.X��3	�zfN��CP�K(u���Ja��r��I���I��+SbU�Ye*�.�B�*�A��z�ip+����������/����+z���j���H��A����rT���+W�����I�z �5��@Zun ��*#�\��[��w�g ��b!��b!�Fb!��y�갹����(	���S��mլXȽF�&��V$�cn�l|���ǫ��VÑȎqD�C�"w��&Rc���+u=��z��}Ed�*:�W����LU�0{�9̪�ĩ2�|(�ݕ���*�]V��k�gV�@���,�kpO��Q�����a��7�X25B�?,[�$T��'n%�H�� ���E���}*�&���C�Q�0�?�w8��0$b�g�Xf"h,M�9i���h���l$��5��itF�dg;c
�&��� �'�p4����?���g6HҳI���%h�G��)q�h��eI��m�Uo�Ū;�����9��6���%Og�t�d6-������68\Vv�C��$�$�|��y3c���@܀@o�z3r����]3I.ڤ%:��pI���\��%:�Kp��%�?R?��[p�%��HY/��隗$��-�ˑg��(_���,�r�/��=�t�ꗤ��t�.M�$E�pY[57\��NR�����pY�� ���d��0� 9
4�X`��?��T��횴�F��v=��E�}*=�z{�Kd��~_!0@
�E�_�SnW�ӷ$�`�m����1.�l�A}Td�)r����t\�H!��Y"����vv�\e�p1���$)�4��O~���ۛ�焋��6��E����:;\��n���69j��%�5����R�bp��-�KZ��$���/�_�A%��0�zu��#���+�sx�"8�g��9<�E5UB��z�uj�N����*s�8U\�Sŕ!���tqe��2]�;��j^��վ�K(��K(��T�+�-.��gNR���ɩ�oB[�*���T9ry{ɛ&�E.`Ԧgogy�C4A+E�+�{�&�b�h���|��5eo�u�C��Tۣm��)���:m�%-Dp�m�6LR�Ec4<��� B����&}X.`~8�j0Ȯ���Avh��@��]\Y_��W�s���KR?�IҸ�$��i�������^�@F�"��#�˾"��!�˙"���G����r�Ex�z����e��*���Uv�M����]�(I�77��q�DG�ik�V�gp��3��Ŝ�5����~1N�o����d=��u��s��t���E���v���|\w�\��w��הϹz�cr���s���Wo�Xp��O�Xp�t��.G�t92.���W�5q	�l�X�����؛���xW䩫
���M֗����ڭ|���?Z�$@�o���{��#tG�f��R�m��H�A�����U�$��r��(��&-V���:�!�%�+.�܃M�מ$5s�%��M�T�M]���˖ٮ�[���@��1��N�.:�b�'��"��Ԏ/��~QD��� ��/��r�/�.:j�k0�_����]t��.�@�K�������Ew~���~�b�����~����/b�n��$�nk���b���b�FEp�o���l�%V?�Hݒ���6� ��$��H2�Nҽ���b�eYG���� ��:
\R�-8r���#^�]���b��d� u�E:�$]��!:��yI���#�*k�袗'l�[KD�T�K*��%;]�3�E�e�������K*_�%�/�jm�E/rt�r	�l�]�ZA��Q�r:
]t�E��q��Z ��Q�\�[.>:
\\����Q�����c^��s��g9I��FR�t��,�r�ڄK���ZT�Mꘇ�1/I17\0ۊ�R�d���$e�p����.=?7]z�m����t�ٳ鲕��e+Á����,���q�<\j��t`�]��"mRg88�!�5�x��nk��l�uPw~��!���r��g���]���nW�2��1���E�S��xs���h�t׍�P�+��u6-��q�:{�܃��)�.�?L�E?���(!�K�`��b�|�Y:���������5G�      :)      x������ � �      6)      x������ � �      4)      x������ � �      2)      x�3�4��5�4�L����� -      8)      x�3�4�4����� �X      G)   D   x�K*M�N-��+�MJ-��tQ�OS(�HUH�+��+���(d���+���r��q:A$=]�b���� 1_
      @)   �   x�u��
�0E׷_Q� ���e�6�$�N�7"�k��1M*J��=��I2	%�Zj��(�K�'�)C.��j��
�dO+�V����5,���i��uz#���[4���0�������>@�Nآ6`�o��t␗����,�{�P�y�$l�RQ�B��ʴ'�����D��;��CN��3)M���
�����g�[cj��eE�D�\      D)      x������ � �      I)   [   x�3�H���L���4ɥI��%�E�%�ũE 14R�e�UcRirvj	.=ƜI�y)H�p�4�I\&���8m9������� Z�3�      K)      x������ � �      M)   A   x�3�r�q����L��+I��K-�+-N-�O*M�N-��,I��L.M���!������� ,8       F)      x������ � �      S)      x������ � �      >)      x������ � �      O)      x������ � �      Q)      x�3�4�?�4�=... ��      B)      x������ � �      Y+   �  x���Mo� ���W̱����w��JU"U�h��"!�c��;����x7e��t���>��jv�L3�m6���O���o��׶;�S��9�]p����W�~�?��M�`�ڣ�`�@��CR���VME�\�b��K�Ф��1gǽ}U���W����ɱ���-�?{r^X%��zT����>%8��D�L�:�NC�S�*��4x �7���="��U����۲�
�0��򎷑ISd��4�u$�^�����>u��?���q�z��#�/�RKN�í�f�!*�4��MC���-��!�z1��ǂ��"i���{��\�y �MmU_���m@�A%����v������X+wT.�j����8)��p�Q;?��Wy����W-IМs��`��eoك=�waDx�Ͼ�m��;�rZU�_g��      [+   �   x�u�Aj�0E��)���B��h�M6o{l�Mc|�H*4���hޛߘKX����`�E�W&��234���:ca�٫u�1���9*��,�0�c�r7RK.���X�N��FLi֧=�.+�m�զ*��Q�=c�^���Si�	��(hԂ�֦1{s���MIӦ�@��ί���t4)�����	Aa�      ]+      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      �+      x������ � �      _+   �   x�e��
!E��c�������>haJ�Z��5�*q���=���Cw�O��w�:\��㨯s�<\��02�k��zH2Trl�ra��M�J��VF�Tۈ2U:RM�����L�OAy�3S��j����S�6=<U���l1�m8- �z�k      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �*      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �+   f   x����I��K/�������L,(��LN,����	e@őWnbQ2HF#��i���srR�Ab�E���E)�F�qB)�B`@g�! .�1z\\\ �K?�      B*      x������ � �      D*      x������ � �      F*      x������ � �      H*      x������ � �      J*      x������ � �      �)   1   x�3�,JM��LI�+�L�L-��D0����J�m��b9�b���� ���      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)   �  x����K�0ǟ�E)>�sK�u:a8u>d&>h�HӬ���)���7�ѵcӗ�.����� ��<���W�G^�C�{�:�$z~/�ʣ������#1]��(���v� �R˷��[��	��\uc=����I#x iMR���['2A6�2o�܃��\�s�����C�U,`2��6#�1�\_|FQ�9;:q���45oS���%%�ffmg�ʴ��B��dt�&$_q�z@)�*�IwZ�cu�������KI<�O�g��ͤ��]���%�U^��FὀdlH��Fu!Y)H�NƇQjP�:�x���ٯ�hy��3��@s	�웢���X���Q4vpX�͔<ؽ��{��q�l��I�/`���:[�*l�������¾�N���v��:��|�      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      ~)      x������ � �      �)      x������ � �      �)      x������ � �      �)   E   x�3�4��M,I����˩T�M-JO���40L�@�$�����Jsr��R�r+�r0�% 51z\\\ z��      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �      �)      x������ � �     