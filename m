Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C7D54FF7D
	for <lists@lfdr.de>; Fri, 17 Jun 2022 23:48:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1226C83EF7;
	Fri, 17 Jun 2022 21:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1226C83EF7
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=WQfHFSdS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EkrcyunCLCGu; Fri, 17 Jun 2022 21:48:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5AABD83EE2;
	Fri, 17 Jun 2022 21:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AABD83EE2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C5B79C002D;
	Fri, 17 Jun 2022 21:48:38 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F3EA9C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 21:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C903A83EC4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 21:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C903A83EC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hAeo5wHK-0Sh
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 21:48:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8B948322E
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8B948322E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 21:48:35 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 10695268;
 Fri, 17 Jun 2022 23:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1655502513;
 bh=wbFHPE42g5rhlpBgzr7YD2oFPGVyJO9plnlU5qXeqG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WQfHFSdSwSpAyNMXXle4LVrCwQxP9pos+2a5k6+0BSEx1OIHST9nlgnJZ+LmZkt/z
 cCt94XkA3P98EvMksGtyNJ+NRHt8PCoHSoRNIfavuvrcPxWcxI44FoC/q6Qkpiin/K
 EXzKc6cPyrJmxo5M3RvBGzTil5r9lrKiFfLx/jhE=
Date: Sat, 18 Jun 2022 00:48:21 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <Yqz2pVwvyo4MFJYO@pendragon.ideasonboard.com>
References: <87sfo3nh3t.fsf@meer.lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sfo3nh3t.fsf@meer.lwn.net>
Cc: ksummit@lists.linux.dev, ksummit-discuss@lists.linuxfoundation.org
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

Hi Jon,

On Fri, Jun 17, 2022 at 02:57:10PM -0600, Jonathan Corbet wrote:
> The development community has put a lot of work into the kernel's
> documentation directory in recent years, with visible results. But the
> kernel's documentation still falls far short of the standard set by many
> other projects, and there is a great deal of "tribal knowledge" in our
> community that is not set down. I'd like to look at the successes and
> failures of the work so far, but intent to focus on a discussion of what
> our documentation should be and what we can do to get it there.
> 
> Questions to discuss include:
> 
>  - Bringing an coherent overall structure to Documentation/
> 
>  - Making it easier for developers to improve the documentation.

I've been wondering recently if it would help to have a place where we
can record documentation wishes.

It has happened quite a few times that my searches for particular pieces
of documentation in the kernel were unfruitful, or that the related
documentation left me none the wiser (one example, which is just an
example and not finger-pointing, is the runtime PM documentation in
Documentation/power/runtime_pm.rst that feels like reading a
calculus-related PHD thesis when all you want is to understand how to
add two numbers). I rarely had time to write documentation patches as a
result, and my pains were thus left unnoticed by maintainers and
developers, who may be willing to improve the documentation if they knew
that users were struggling.

>  - What we would like from Sphinx and what we can do to make it happen
> 
>  - Making the docs build system less ugly and more maintainable
> 
>  - Integrating rustdoc documentation

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
