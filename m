Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C05DC9AFE2
	for <lists@lfdr.de>; Fri, 23 Aug 2019 14:48:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A7F78EB5;
	Fri, 23 Aug 2019 12:48:27 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AF75E97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 12:48:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 403A667F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 12:48:25 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id x15so5743162pgg.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 05:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=hCDsW5RL1J+TcuhHrUHgLwws5hWBT6ioG81UjKJzBf8=;
	b=rzZDk73T+LQIu/qHUqimc6hAnfIe+T9jG15b4fyqB1mTrdLqnT/Qf+3d8iVulZ+/Pi
	91tepKwjtx3qC+Skn4NvqgnsOVfCsXLdG/R7mSIpkYpwaYurRXvjkZECeAm5IeUsdS1z
	QEuUI/xJiJxnczJ8+B2oqR7cqeraAtxz8igsdXqbyhy7qZ/Tfci/WP5fssTcuuDANTli
	Ah76PpZM8mmfaldKcR6+Dia8j0/XLDM12ydiG88QG8LJYAroAyw4U1PK4g70kylxHbf9
	Bt9RqhNQlX2Qutr9MrvGt8hIYuDyOXSMa7ip4ZM8OU//wRTAt572rcxvTQ8QGUmuxe1B
	wMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=hCDsW5RL1J+TcuhHrUHgLwws5hWBT6ioG81UjKJzBf8=;
	b=IbYvGIArwbxRq25alC8k4xPzV2LfeZV811IzyJD4z9jVAvpjf5rzvbWfjsj1iW/rQ4
	yNrfmeHG+NtNMdjWFOAK09y4zwT85gyBCrgJJBNLjKRuQYPsVsfF2DAkw8TesHFZzF9d
	DQ8DjzMHBxRsy/eBcE9H3Ag5M+u+vuJBduv2kfEx5wRxJM6wT+EUa1QYYfAgUpEhEdu1
	iepXYMDEIarbcXYWfXWf1JCSytah0Yaozy83tCfh4TuxYLsHSc5PfCQ3ZCoCAY/DFB94
	6KD2bQs3fXMvTy8JyKhyH5ftRPrNd8kqsOBdtwecFbo1zeqZRLPXWdwPhDBgqEGDH6xT
	xgJw==
X-Gm-Message-State: APjAAAXy2Tjoyd77iLKVzXDAfP3qGZwZu5pSzBh8eJcJipmSoXqXohV5
	pz89EbmCxXlLP3XGDAgBzME=
X-Google-Smtp-Source: APXvYqwkW/60LYh4NwoO7diX8ngGBqHBtuobN5gYSGcvsqSC0mQ5m3030Kq52JFIpjSsmxWAlp2fBw==
X-Received: by 2002:a65:68d9:: with SMTP id k25mr3832639pgt.337.1566564504827; 
	Fri, 23 Aug 2019 05:48:24 -0700 (PDT)
Received: from Gentoo ([103.231.90.174])
	by smtp.gmail.com with ESMTPSA id 65sm5117105pgf.30.2019.08.23.05.48.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 05:48:23 -0700 (PDT)
Date: Fri, 23 Aug 2019 18:18:05 +0530
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <20190823124802.GC8380@Gentoo>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<5801d0a8-a7c5-559e-7d92-3a233b00d9f7@suse.cz>
MIME-Version: 1.0
In-Reply-To: <5801d0a8-a7c5-559e-7d92-3a233b00d9f7@suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6107886339019027745=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============6107886339019027745==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9crTWz/Z+Zyzu20v"
Content-Disposition: inline


--9crTWz/Z+Zyzu20v
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

Clicking on the Change-Id doesn't have any effect or do I miss the
feature completely?? It open up in similar window in another tab...not
sure that is what required. I mean what's the point of having redundent
window open in two different browser tab??

Wondering!!

~Bhaskar

On 11:09 Fri 23 Aug 2019, Vlastimil Babka wrote:
>On 8/23/19 4:58 AM, Linus Torvalds wrote:
>> So yes, I'd *much* rather see that "Link" line than try to make a
>> "Change-ID" line be a thing.
>>
>> Of course, looking at that particular link, my initial reaction is
>> "people are bad spellers". The word 'amend' has a single 'm' ;)
>>
>> And it _is_ important that the link in question is stable, of course.
>> Some systems have problems with that. Is that "c/1158" actually a
>> stable long-lived name that will stay around as the thing is modified?
>> I don't know how that system works.
>
>Looks like there are also links that include the change-id, and redirect
>to the shorter one, i.e.
>https://linux-review.googlesource.com/q/I3268f9036512c4378cde1da37e0612b43ed4d384
>
>Seems to me like that's "the best of both worlds" - a link you can
>click, and also a unique ID that can perhaps outlive the particular
>website and you can search for it elsewhere in the future, if there are
>other mirrors. Exactly like the message id's in links to lore.kernel.org.
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--9crTWz/Z+Zyzu20v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEnwF+nWawchZUPOuwsjqdtxFLKRUFAl1f4H8ACgkQsjqdtxFL
KRV1OwgA0/6o6sa6iwIyKotHuy4RdeyQv4WaaMjEKnIPdVPihTO/SIyMn6S7lTpI
k/OA1kp01nHNslSJZgQKzUWsoY/NGY0tvB453EQmOrjYbNqOCbUxQtjTtJbYs1XF
wSS38OT778/lsv/zrSMV3TqrawENPMFBIhNH7KM5dPkN4y4bE9KnvNUyo77KgF7c
c39ccexjfBezmWip7nPN1G9RVtqm1fogBUbV/I/P8ciZ4YuBVsyBjDNs1eaBcx1g
TEFzfCZNO1evc2qOzc3I9IIL+Vt8iHNZh/VEMLkBgC1eh4UoUQ0bxPxZkbI7R5vn
UxIkx84OqpnSKzNCKWgmEqpT/0o2EA==
=6rRX
-----END PGP SIGNATURE-----

--9crTWz/Z+Zyzu20v--

--===============6107886339019027745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============6107886339019027745==--
