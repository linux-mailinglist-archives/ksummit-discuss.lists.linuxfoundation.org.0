Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0442183B8
	for <lists@lfdr.de>; Wed,  8 Jul 2020 11:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4518E88C7D;
	Wed,  8 Jul 2020 09:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-dqcNmgOZLQ; Wed,  8 Jul 2020 09:30:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD74A88C8D;
	Wed,  8 Jul 2020 09:30:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8CA70C016F;
	Wed,  8 Jul 2020 09:30:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9C4B6C016F;
 Wed,  8 Jul 2020 09:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8BD02891B5;
 Wed,  8 Jul 2020 09:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EICCi3jAdR9a; Wed,  8 Jul 2020 09:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D66988DDA;
 Wed,  8 Jul 2020 09:30:24 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73D792067D;
 Wed,  8 Jul 2020 09:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594200624;
 bh=rPde1yrtoaYsrjcQMK0JSsdDmzQWg+KzFioOvIlutmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sk6tYvQEfMiVVgAqJTvZN0gzFNgeijJ6iBR9KL6jJYQVL3Shb+UhbcJLgK+lU8Wfy
 OGNAhzYKUK5BNUUSedNX10GZR5U5LaWdOJ/M10ismK95wrc5FUaBgNBKhS0BXTuuQE
 dXOXCPPxNh7JFrcIP34MVxHXb3nLWYuTJ978Za7Q=
Date: Wed, 8 Jul 2020 10:30:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200708093018.GA4655@sirena.org.uk>
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
X-Cookie: Oh Dad!  We're ALL Devo!
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH v2] CodingStyle:
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
Content-Type: multipart/mixed; boundary="===============0026027259949641149=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============0026027259949641149==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 08, 2020 at 12:23:59AM -0700, Dan Williams wrote:
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.

Reviwed-by: Mark Brown <broonie@kernel.org>

> +'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended

We could have controller as well as host.

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8FkikACgkQJNaLcl1U
h9ARbQf/epm0DKg2MJhGxaC8/qYrQcvvk33ZowHtxkiYgMuDA3wdpXst2NAfFJ6Y
OqyNXN/5toHgj3nYn02sfRpYKQaWtYEQlu70nRkaywJ6o44uhk7RBQ3XZ/QKzp4e
AhuENeaoPDICp+h+d5bWrJsPZFbhQ1EoAZ6MS+OG0MzSvXbQ3g4AjSjKQyAtnMXm
m4uI2MOSLrf0IIoo0yPyeds/xVOim1GHZa3IBVaUAu2Aae5HI257nGlkzxO0pVir
QFhO7f9J0OS9efmHAoPuOFk/0ZvUjn0Yspc8o6sKWXoVX0hgXaRU20nVQ82kRgcs
G8azFKoSgB2bhv7pozMVift+8Zt9kw==
=PIk+
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--

--===============0026027259949641149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============0026027259949641149==--
