Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A56F9B816
	for <lists@lfdr.de>; Fri, 23 Aug 2019 23:26:11 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 36C75E2A;
	Fri, 23 Aug 2019 21:26:01 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42EE7DE1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:25:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5E6A7FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 21:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aBDGKD1L7bqpwqKG1Eqantw70g33CShius3DkAL8I38=;
	b=w2NPirWb08NveoNdnyJhufEWW
	8PCwOayNe4A1d/abgh+lTD9H7mw7crIf+dLoT92zjFw4FZKOfoTf9D//QcB+0LUZ2FNQvBJYlVdpt
	9NJs7u3vUD78xcB2wow/yvwF9tCq3Psvi8+RpztbPc6Bnj0tETdeX5udKC+8fiMGTKoKE=; 
Received: from [92.54.175.117] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1i1H4F-0005Ss-Hz; Fri, 23 Aug 2019 21:25:55 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 3FC4FD02CD1; Fri, 23 Aug 2019 22:25:55 +0100 (BST)
Date: Fri, 23 Aug 2019 22:25:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190823212555.GV23391@sirena.co.uk>
References: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<20190823193832.GE4791@pendragon.ideasonboard.com>
	<alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
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
Content-Type: multipart/mixed; boundary="===============4922291763947785282=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============4922291763947785282==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VmyrZ50r30oK77nV"
Content-Disposition: inline


--VmyrZ50r30oK77nV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 23, 2019 at 11:15:55PM +0200, Thomas Gleixner wrote:

> For the maintainer side there was something mentioned about some git-am
> option which allows to insert the link somehow with some extra hook
> magic. IIRC, it's in one of the ksummit threads, but I can't find it right
> now.

It was to have this:

. git-sh-setup
perl -pi -e 's|^Message-Id:\s*<?([^>]+)>?$|Link: https://lore.kernel.org/r/$1|g;' "$1"

in your .git/hooks/applypatch-msg.

--VmyrZ50r30oK77nV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1gWeIACgkQJNaLcl1U
h9Agugf/XnTjHkM5DfY80KLvV0G6fXiGoe09k1flScgFlIAGq23fURny8O3hvq/j
Yom44hSrMQE+IJL4NG39EpUUiAWzlsdN5lbdvlm9V9tBp/FqwycjGxBAZenA0uAe
c1VbndPyfbB4sXZHRrfvFazBOY99VH/Y0zP6xt9rJ4GQg7y1jLOcsaEt4KQQOo/9
fUCv46kNxG6LMvTUXkZEDh78TbpjqGH/A/gHfUuv9d0kD4aYbDHNtJYmHn0ixDt3
8J7lEQmuiA5h1WIFHsSsDadRH43cOd1kdnWdT67D+kjwcZgIjRHinbNqSz7T6S18
grxAz1aIOKDnRLVqi12jKlsgSJO3ug==
=wIL4
-----END PGP SIGNATURE-----

--VmyrZ50r30oK77nV--

--===============4922291763947785282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============4922291763947785282==--
