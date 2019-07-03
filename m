Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA935EA04
	for <lists@lfdr.de>; Wed,  3 Jul 2019 19:06:59 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 14F11EC3;
	Wed,  3 Jul 2019 17:05:24 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2501E9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 17:05:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75E88880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 17:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PeBcGOWyoy6bYfr9ZIJzP5Rj9GzBkvQEEzQ36P2SFvQ=;
	b=isKVXgkLay3g9PfDHS4ddYZLA
	BwfO1fXSAQsWFAiXIbWxl69QIzRBs/SMQG1Xq5siIR2jthFlthlCCQHpEPi2PbqewLssgQMElwGcC
	TBuYiqSMYJ4KSXybB0sAOT+Y7MspQvL++SpFExboosoRjQ5hBSlioBMlTMEW2sap0OXmk=; 
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
	([82.37.168.47] helo=debutante.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
	(envelope-from <broonie@sirena.org.uk>)
	id 1hiih2-0006vY-CM; Wed, 03 Jul 2019 17:05:16 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
	id A530A1128FB2; Wed,  3 Jul 2019 18:05:15 +0100 (BST)
Date: Wed, 3 Jul 2019 18:05:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190703170515.GA3490@sirena.org.uk>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<20190703141013.GB16008@quack2.suse.cz>
MIME-Version: 1.0
In-Reply-To: <20190703141013.GB16008@quack2.suse.cz>
X-Cookie: You will be successful in your work.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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
Content-Type: multipart/mixed; boundary="===============5159165706994023199=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============5159165706994023199==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 03, 2019 at 04:10:13PM +0200, Jan Kara wrote:

> So I agree in a lot of cases Link tag is going to be useless. OTOH I'm
> willing to put up with the useless Link tag for the cases where it does
> help - e.g. multiple times I'm been chasing mailing lists to find out
> what's the latest posted version of some patch and what other patches are
> in the series so that I could backport them as well. And the Link tag would
> help with this or even make it possible to automate this to some extent...

The other thing with the link tag is that if we can automate generating
it it doesn't really cost us anything - it's going to be more effort to
decide if it's useful than it is to just add it unconditionally.

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0c4EgACgkQJNaLcl1U
h9C1Jwf8DcSq03BsVJAYRFQ2VFqq2XCWMEw+E0Nls9qOPzxPYJSptCiaQxY6hkHh
s06WQmibWKW985OW2PR97A/5oQi12+qRfP1aaS0YBCuk+e7C/Uo29cDR2+v6Nr8r
7Csz25MCszars1CnrYDcERZJhqAlqGZjKPJ7Pju7gXEyHrrnbN9HKvcvOqwSf4cW
Y7+JVt6BSRZvkAr1+A4g6P/pmNYeStOs32cl6yD/ulq7urezb6kQCH0conCn/KpN
VDwjfl/WUWyH1CrqKMXpnWRjxl5lT10bfWh9hhQlb6KyvIaf30rrHqFNpaqWj4ox
mn3c0eh/tTkNkTP4HlKQv1LDzqzCVA==
=tnFc
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--

--===============5159165706994023199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============5159165706994023199==--
