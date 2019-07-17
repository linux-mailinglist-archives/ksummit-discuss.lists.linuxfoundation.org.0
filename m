Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE646B759
	for <lists@lfdr.de>; Wed, 17 Jul 2019 09:31:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A4817B79;
	Wed, 17 Jul 2019 07:31:35 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 13B9FA7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 07:31:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5431B25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 07:31:32 +0000 (UTC)
Received: from localhost (p54B3309B.dip0.t-ipconnect.de [84.179.48.155])
	by pokefinder.org (Postfix) with ESMTPSA id 6CD2F3E4757;
	Wed, 17 Jul 2019 09:31:31 +0200 (CEST)
Date: Wed, 17 Jul 2019 09:31:31 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20190717073130.GA1021@kunai>
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
	<CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
	<alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
	<bf269ea7-6a9c-25db-5b97-958d9e15bddd@infradead.org>
MIME-Version: 1.0
In-Reply-To: <bf269ea7-6a9c-25db-5b97-958d9e15bddd@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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
Content-Type: multipart/mixed; boundary="===============8320890709314985128=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============8320890709314985128==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Right, if you commit it then you are responsible for it. It does not ma=
tter
> > whether you reviewed it yourself or relied on someone else review.
>=20
> It's a bit amazing (and scary) that this is even being discussed (as thou=
gh
> it's unknown) after these many years.

Guys, I am just trying to better cope with an amount of patches I can't
handle on my own currently.

My strategy to get more people involved is divide and conquer, e.g. look
for people willing to maintain a single driver. That makes the "trust
matrix" kind of complex. So, I still do think I can improve where to put
my always-too-limited efforts by documenting where I put it in the past.

I can keep track of that differently than a R-b tag, that is fine with
me.

I never had the intention of sneaking out of responsibility and I only
sign patches I am sure they are ready to be upstreamed. This discussion
exists because I want to keep this state.


--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0uzs4ACgkQFA3kzBSg
KbapUw//dXT2iXQqrdT2fazUHBKY6LtFWIeVOdtlh5EQ0rx4UtlthMmGrH0G3boz
jGa7YFMkvYYWJqLI7UolGg2LGnl3YX7ZMNoC8WRi3dGi4+i9u0pkMVHDRgorEc5M
WJ54i+Ws10RcUpw9raZkZWBjeoDAWeFHhKGji0znL09F1HIJaP8QsFZmUvUwaJ2c
6FL2urLSxmebKolAa1pEg+2w0W2Jr9xIEpYf5KAkJ4iJJrUwDtepCwHL1N+ysCny
pMdT2Hk9G165IbldjWhXATN2LfQJKqUZ50lnwdG+Ludpm9BV2hhkx1NgqHQdQuED
LvI3LjHoQ5eYkTU1Nl56UXKI/10W9oXBJGixKrIPwiR8QFJJlXTAygRrD8VgExw7
D8KnvYxm2kRfgFzUVG+XKUfRjQah2ZilpUJlqq5ifgt5eBTXc/NuKyUbYe6GWPCg
Ifcvtw9FUVAGPVzI1msWzRBhS8EC9IfYpW9Ikf1uPdk9KstsYTQOr0HDmTIi+T/U
Tta4h01xdqOI3aFEmzD43oBDHykgrzdjDh7btoZd48S84ZC0gUAIXUkk0yDchzs3
ohFf+Xaoy25/vKrEyuQzIiAZRQv2b/l7HNzK3+BOlRiC/uBl4jqOThNVSJ90fT9c
cFtKJMVQHb7ytAuqC8zCs3qv8QVv7P8Xjm2Zqh14897FWjsP8aM=
=LCEi
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--

--===============8320890709314985128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============8320890709314985128==--
