Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170EB21692D
	for <lists@lfdr.de>; Tue,  7 Jul 2020 11:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B31CB8957B;
	Tue,  7 Jul 2020 09:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8NaF5BJKjmd; Tue,  7 Jul 2020 09:36:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73DB58869B;
	Tue,  7 Jul 2020 09:36:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D41DC08A5;
	Tue,  7 Jul 2020 09:36:53 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38616C016F;
 Tue,  7 Jul 2020 09:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 211D787556;
 Tue,  7 Jul 2020 09:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImcVYg2L65w2; Tue,  7 Jul 2020 09:36:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89A7687547;
 Tue,  7 Jul 2020 09:36:50 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2B822065F;
 Tue,  7 Jul 2020 09:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594114610;
 bh=BMltbbwQtCu5hpMlykt8gJ7hZRG+849B8kBALrx2NlU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZJ6PLdcgMFrNLsfyX7lSwTPi+XIgiKoNmzgWX08QvO+z8F01ZTHfRnlVKyVSxC5f8
 9ToiffMUS1HvOVn+mkAuJrIlRCebg19FM/od9Ug3CG+gpVNep6fT+YE4LfTGA3mGfN
 w0FN8m7sz0evJgGp/KaI5WTIufluInGG9NWHxgA8=
Date: Tue, 7 Jul 2020 10:36:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200707093645.GA4870@sirena.org.uk>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200706191555.GD6176@sirena.org.uk>
 <CAPcyv4iiVvJHPTmgssTvp=jsFCs2r068mPtZ9s0qXfEKFNdVBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPcyv4iiVvJHPTmgssTvp=jsFCs2r068mPtZ9s0qXfEKFNdVBw@mail.gmail.com>
X-Cookie: I hate dying.
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
	Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3539978657341694059=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============3539978657341694059==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 06, 2020 at 09:08:57PM -0700, Dan Williams wrote:
> On Mon, Jul 6, 2020 at 12:16 PM Mark Brown <broonie@kernel.org> wrote:

> > This, especially the bit about "revelation of 2020", sounds a little
> > off to me - I think it's that it's worryingly close to the frequently
> > derided pattern where people recognise a problem that other people have
> > been talking about for a while and treat it as something new.  Perhaps a
> > more neutrally worded reference to current events and/or our desire to
> > improve instead?

> I'd just as soon let this commentary live in the archives if people
> need some more background. It's not like we have companion essays on
> the other recommendations in coding-style, and we seem to be
> converging on just amending coding-style.

That's even better from my point of view.

--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8EQioACgkQJNaLcl1U
h9DXsAf+Ixl3NaYK0JFA8SARde57YtdMm0jI29+4yhgy2x5Mz7JNSIcLoBqODnUv
GxDzz4Xy5u5YSDT0Okvxp50pMurC0ALBt+d6TAw7oCwpTw/46JkCGJBCaFd0w6aB
LtWa9zqMK6ZTNUZLl65hnksBJmrR9OrIzbqkFuO42S+1nzgscno/mOK8qzTdqMJl
7vPkg/1yy7F59jCvBawdXJgxEcd6GAQlB/SRq0pDOgh4pMoOUz0dQtS517id72Dp
996WK3ZSWZ4wrQR+UXkiHTQdXWETPF/ZTB8JjGA87QabYxB9FUaox/SUpqKAlvl2
pa6mhDPrq7D9I7A8wpN+B4DOD9s6jg==
=PT9R
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--

--===============3539978657341694059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============3539978657341694059==--
