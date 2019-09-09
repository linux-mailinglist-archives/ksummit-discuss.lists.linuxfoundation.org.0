Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 86970AD8C9
	for <lists@lfdr.de>; Mon,  9 Sep 2019 14:19:15 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 30E541075;
	Mon,  9 Sep 2019 12:19:02 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6548C1062
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:18:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D243D82B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/pQIBG4kyIem0lHcMKnigsEGdIJ9TuwjzLxNupvr0wM=;
	b=qkFyu+YnWUntRam5oJL7YrXlx
	fGbJ7Rk4+tpMqjLMvQsGrBbEuK9/mUK9jLn561WA3MsG3zEL3L2NtOr4ScsZqMa4tLCZiHsJB9eY5
	IAG7O7+G/JZoN79VvwoksN3XPdVdCeNb7J79d2wYG435aJuEfRJdjcQ8pmxBG5ccX9JsU=; 
Received: from [148.69.85.38] (helo=fitzroy.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa
	(TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
	(envelope-from <broonie@sirena.org.uk>)
	id 1i7IdE-0002IM-QX; Mon, 09 Sep 2019 12:18:56 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
	id 0CF86D02D4C; Mon,  9 Sep 2019 13:18:56 +0100 (BST)
Date: Mon, 9 Sep 2019 13:18:56 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190909121855.GF2036@sirena.org.uk>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
	<1568025855.6613.5.camel@HansenPartnership.com>
	<20190909115338.GD2036@sirena.org.uk>
	<1568030467.6613.19.camel@HansenPartnership.com>
MIME-Version: 1.0
In-Reply-To: <1568030467.6613.19.camel@HansenPartnership.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
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
Content-Type: multipart/mixed; boundary="===============5832630856601787821=="
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--===============5832630856601787821==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1Ow488MNN9B9o/ov"
Content-Disposition: inline


--1Ow488MNN9B9o/ov
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 01:01:07PM +0100, James Bottomley wrote:
> On Mon, 2019-09-09 at 12:53 +0100, Mark Brown wrote:

> > That's often a corporate problem as well, if the company has a
> > big investment in whatever approach or codebase they have they
> > may not want to spend the time on substantial rework.  Often it
> > seems fairly clear that the people doing the upstreaming have
> > inherited something from other engineers rather than having done
> > the design and original implementation themselves.  In my more
> > embedded experience I'd say that the corporate investment is a
> > more common issue than developers.

> Actually, I find the inherited code part easier because usually the
> person pushing it isn't wedded to someone else's design and is happier
> to do a rework because it makes it more their code.  My biggest problem
> has been with the original author trying to push their design as the
> only possible way and then trying to bring corporate pressure to bear
> when it became clear this wouldn't be accepted.

Yeah, both are issues - the corporate one is usually basically a
"we've decided we need to get this done in X timeframe" or a "we
have a massive investment in testing that we couldn't possibly
repeat without which any other solution much worse" so it goes
beyond the individual developer.  The developers might be happy
to do the reworks (they sometimes thank me offline for saying
what they've been saying internally already) but are being told
to push the existing code.

> > I'm not sure I have any particularly bright ideas other than
> > being clear with people about what the issues are and asking for
> > clearer explanations of what's being done and why it's different
> > to everything else.

> Trying to explain that it's a maintenance and consistency issue more
> than anything else does seem to help.

Those problems do tend to be a bit easier to get over to the
management people.

--1Ow488MNN9B9o/ov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12Qy8ACgkQJNaLcl1U
h9DwmQf/dtrqxpXfA44jU6+ymfuZyyT8m5RaQQB38R3C+P9yDnlL9yyKanpWYtVi
yX04y3J9c5mGMbgaOpPkoyAetb3e0nv/MqEbMDDaJdH/6buDzJdhN0AATv5fpYtL
l4ZSiCXCU7Akr3FP7viLJu9MCLFnqjut/MfigBoKM/JpbSyEThvMOu9DBDQm53vt
rgcWUNC4z/z+YozkD55BtviJ1D+T2gANxwUDEQtFrTMLHYYd7/bBNHNb0egmz/J2
Cuq5JcR6pdqAhdNTAsNIXq9YYfIRC+6yxjppunToetMqRg9wQLLXd+wCBxppx7N6
FlBYJMbQ/OdbuK4kmGBE7RMoikLk2w==
=J85U
-----END PGP SIGNATURE-----

--1Ow488MNN9B9o/ov--

--===============5832630856601787821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============5832630856601787821==--
