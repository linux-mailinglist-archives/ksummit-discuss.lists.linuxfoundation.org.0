Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 128095506B5
	for <lists@lfdr.de>; Sat, 18 Jun 2022 22:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87AC24159F;
	Sat, 18 Jun 2022 20:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87AC24159F
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=EdGLA+Iq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rW3iwSZ1HY0n; Sat, 18 Jun 2022 20:42:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 75CE341588;
	Sat, 18 Jun 2022 20:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75CE341588
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 061C6C002D;
	Sat, 18 Jun 2022 20:42:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5543AC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 306EA41581
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 306EA41581
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIeyP_q11dO1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:42:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39C3C41526
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39C3C41526
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 18 Jun 2022 20:42:25 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9148B383;
 Sat, 18 Jun 2022 22:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1655584941;
 bh=JGkKIPnRKhd3N6wL+AxZJ3uxC8GA8Yf/GNZANT9NDjY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EdGLA+IqcpuN8W/tAZjkw7dHpcJo7pKbzI6cd5u43/zAbVXLxy1Xydmjfx4wWzGCD
 q/KHuYDM1jJGOy45dyPXs1yK1f6FX9AssU3B0THiCUfYEPlh36H+UKalG301Q97QMT
 n+9C1TGZ9Oxkbq3YU97FwgacljwlIrDftEI4bMjc=
Date: Sat, 18 Jun 2022 23:42:07 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
Cc: ksummit@lists.linux.dev,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Rust
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

Hi Miguel,

On Sat, Jun 18, 2022 at 10:33:01PM +0200, Miguel Ojeda wrote:
> The effort to add Rust support to the kernel is ongoing. There has
> been progress in different areas during the last year, and there are
> several topics that could benefit from discussion:
> 
>   - Dividing the `kernel` crate into pieces, dependency management
> between internal crates, writing crates in the rest of the kernel
> tree, etc.
> 
>   - Whether to allow dependencies on external crates and vendoring of
> useful third-party crates.
> 
>   - Toolchain requirements in the future and status of Rust unstable features.
> 
>   - The future of GCC builds: upcoming compilers, their status and
> ETAs, adding the kernel as a testing case for them...
> 
>   - Steps needed for further integration in the different kernel CIs,
> running tests, etc.
> 
>   - Documentation setup on kernel.org and integration between
> Sphinx/kernel-doc and rustdoc (this can be part of the documentation
> tech topic submitted earlier by Jon).
> 
>   - Discussion with prospective maintainers that want to use Rust for
> their subsystem.

All previous topics but this one are technical. To restore the balance a
bit (and also because I believe it's important to the success of this
project :-)), I'd like to also discuss the impact on the kernel
maintenance at large, beyond just the maintainers who opt in to be early
adopters of rust in their subsystem.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
