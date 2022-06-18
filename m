Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F11550432
	for <lists@lfdr.de>; Sat, 18 Jun 2022 13:16:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BADEB405E9;
	Sat, 18 Jun 2022 11:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BADEB405E9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=s7qDWkK7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kO3bnOieQlD0; Sat, 18 Jun 2022 11:16:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 012784052A;
	Sat, 18 Jun 2022 11:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 012784052A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 89C41C002D;
	Sat, 18 Jun 2022 11:16:20 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 23D1BC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 11:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB4B9414C5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 11:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB4B9414C5
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s7qDWkK7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G6GQH2rX3exb
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 11:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B209A4099E
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B209A4099E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 11:16:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 647CEB80122;
 Sat, 18 Jun 2022 11:16:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 781BCC3411A;
 Sat, 18 Jun 2022 11:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655550973;
 bh=RJpPFToWyREP9oTwDYrBftJAL/JgBShndx+Y8Q+Kk3c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s7qDWkK7fJAWLtXQ/bbaVkFbd5NIaMXaeVDTxaQ1xWMczuJzof4M5f6ip/Z9pDenv
 Ew+YsQcByDfr/QNlZ/klMV4RF9zqFEWJHjnEUZyLYnB+Bhe6kuzRo5K4VOD53V3ft9
 kQHqvHPVbvMl+PZpwKIZWJEM6/8KKEfU1XGAuBM1kIm2Kw4ElczRBArlX6pfg6mNqX
 HoARr7yulHacLGLCtNUYEuwJCAJoI7WOt1i0Pn8VAFLtU3SrqQUTU5BG3mB2UqSEZw
 Q7v52D1a8lPywzZynzzBjOkJDM6YCtYxSCW6SFQoMu24BQRH+Im4CxniEIaBJsgAkd
 9UZHzeF4M2LpA==
Date: Sat, 18 Jun 2022 12:16:06 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <20220618121606.755e40df@sal.lan>
In-Reply-To: <CANiq72kafybxPbS13g+heYMX=Ggmw_8MqYj41uJ0Ek=3HP7-eA@mail.gmail.com>
References: <87sfo3nh3t.fsf@meer.lwn.net> <20220618092447.5ebed314@sal.lan>
 <CANiq72kafybxPbS13g+heYMX=Ggmw_8MqYj41uJ0Ek=3HP7-eA@mail.gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] What kernel documentation could
 be
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

Em Sat, 18 Jun 2022 13:03:38 +0200
Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> escreveu:

> On Sat, Jun 18, 2022 at 10:24 AM Mauro Carvalho Chehab
> <mchehab@kernel.org> wrote:
> >
> > Life would be a lot easier on this side if rustdoc could
> > support ReST.  
> 
> Not sure what you mean by this. Do you mean writing ReST for Rust
> documentation? For the files inside `Documentation/rust/`, we already
> use ReST [*] like the rest. For the source code docs (the ones handled
> by rustdoc), it outputs HTML. Or do you mean using rustdoc to generate
> `Doc/`s or similar?

I meant that rustdoc could generate ReST output, being included inside
the Kernel documentation on a way similar to kerneldoc. This would
integrate better with our building system, which can produce output docs
on 3 different formats (html, epub and pdf).

Regards,
Mauro


> 
> [*] Though it would be nice to be able to use Markdown (but that is a
> different topic).
> 
> Cheers,
> Miguel
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
