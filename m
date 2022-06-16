Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0D154E186
	for <lists@lfdr.de>; Thu, 16 Jun 2022 15:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67D0B61130;
	Thu, 16 Jun 2022 13:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PX9kcyh5vWAu; Thu, 16 Jun 2022 13:11:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8FA3E60B59;
	Thu, 16 Jun 2022 13:11:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE961C0085;
	Thu, 16 Jun 2022 13:11:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4693DC0084
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 13:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DDDD405A7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 13:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pk7t35HZonQH
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 13:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7932C400EF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 16 Jun 2022 13:11:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4DCBA61B69;
 Thu, 16 Jun 2022 13:11:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DC80C34114;
 Thu, 16 Jun 2022 13:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655385081;
 bh=l2ckpfFPiBkQTBMXnAjf1QfBK98OwMfCEJG35LmkS04=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UfoJmfTl6MMEcSlmTtP4h0GptiqmvsqDL/17HdYqI66p97JTS+mP5sA3em5KUNTcF
 8m3zDlWDzMdbVCFCF9MazMxlagEOayL4JB3OedXu0zprToNml6BawMrjnVMTugno2d
 5s98X0EHSVCyOTeu/Y+p3mxT08ZfbjTxUSckVCF7VhjvsBSEAwA2RBE6xqOwAqUwrO
 YxL4A7f/bvlT7bxykGETlXFvEuhPHxwmRJ+ct2K/T1Lr2I2S3lbWGiJyhaFkox+QO+
 QdjuJHITFHiYRGLT7gT9YVBcGQhRkJuXxVSfqPptA5rcA5dZ6+miJ8+tGkicPF/6ot
 GRAyLZVXsrH/w==
Date: Thu, 16 Jun 2022 14:11:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <Yqsr9YBKLb8PNeVf@sirena.org.uk>
References: <20a02cbc-c0d5-e6f9-93fa-c1bf7592cfab@leemhuis.info>
MIME-Version: 1.0
In-Reply-To: <20a02cbc-c0d5-e6f9-93fa-c1bf7592cfab@leemhuis.info>
X-Cookie: Pass with care.
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Regression tracking & fixing:
 current state, problems, and next steps
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
Content-Type: multipart/mixed; boundary="===============1461503897077127488=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============1461503897077127488==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yw1yCniasOL/uogl"
Content-Disposition: inline


--yw1yCniasOL/uogl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 16, 2022 at 02:49:40PM +0200, Thorsten Leemhuis wrote:

>  - I see many mainline commits fixing regressions I never noticed, which
> made me wonder: is it a problem that I apparently seem to not become
> aware of many regressions reports? If the regression was fixed that
> obviously is not a problem. But it always makes me wonder how many
> regression reports are out there that were not addressed?

Especially in the embedded world an awful lot of reports come in the
form of fixes so there's no separate report.

--yw1yCniasOL/uogl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKrK/QACgkQJNaLcl1U
h9ApAgf/V5RmeLBz3JnxRVQMJLx3zH3OV3Ky5gp8RIYH9Yk/OAAKZ5sUEOZ3Fx2k
vt5GkxaC+Q6kE4jmbgdGtzioOEXJtWvFJ2RW2wtMdp349yF+mOBE5AfwOkpbniIp
mGd6Z4oC2M8+J57qduCrTbvR516EXkHVMT36iSHdHxfMDbw+DidD0llWM0CrwV+w
rZfTEZKxYD+uV9OPi6EjxKuEEJQJdGx7mMWpgr4LTrwu2pekacvRQHIssJoh/+wP
85r8r6oQRz3Y6RPLYSSdhUf53MjS1Eph/FMRmdjZk+PS6q7ZXJadDFLNFjmfK+Kh
TE5Gs+RLz7U4g6SktkVH4okw2WPZoA==
=4hgF
-----END PGP SIGNATURE-----

--yw1yCniasOL/uogl--

--===============1461503897077127488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============1461503897077127488==--
