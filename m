Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8189E550998
	for <lists@lfdr.de>; Sun, 19 Jun 2022 12:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CFC7408A7;
	Sun, 19 Jun 2022 10:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CFC7408A7
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=AqiRvTZL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fBCWRKpGs64P; Sun, 19 Jun 2022 10:04:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 519B740895;
	Sun, 19 Jun 2022 10:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 519B740895
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E779CC0082;
	Sun, 19 Jun 2022 10:04:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0DC7FC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 10:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D776A82542
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 10:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D776A82542
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com
 header.a=rsa-sha256 header.s=mail header.b=AqiRvTZL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rL4HCbt68QDf
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 10:04:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC9E38248F
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC9E38248F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 10:04:18 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 09006929;
 Sun, 19 Jun 2022 12:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1655633055;
 bh=EyPS6YQJ74adexbiMqAj0h0F6PEGZP11C/H0XvNsBts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AqiRvTZLiJmwncNIessZGx9JPTUkCPy3LIiSms1SsAendpkbVHPaU/LljLI+0Xq9r
 kFdjJpScrp24KzdesA4DSBg/ugZtN9l22j+ywu31SlMN4RgAYV13MDJdiMyHxxWDib
 7wvAPBL3beKGhPT5jXTzdMhsdsY5X4sr9zmL6IcU=
Date: Sun, 19 Jun 2022 13:04:01 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yq6+p+aRCjeZ7QsS@infradead.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, ksummit@lists.linux.dev,
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

On Sat, Jun 18, 2022 at 11:13:59PM -0700, Christoph Hellwig wrote:
> On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> > All previous topics but this one are technical. To restore the balance a
> > bit (and also because I believe it's important to the success of this
> > project :-)), I'd like to also discuss the impact on the kernel
> > maintenance at large, beyond just the maintainers who opt in to be early
> > adopters of rust in their subsystem.
> 
> Yes.  That is I think the most important point.
> 
> I've played around with rust a bit for userspace project, and there is
> things I like a lot like strict type safety and the ownership model, and
> things I detest like verbose and unlogic syntax, the cargo cult of
> vendoring libraries instead of a sane shared library and versioning
> model (althought that should be largerly irrelevant for the kernel),
> and compared to many other languages it seems overall rather sane.
> 
> But I'm really worried about the impact on the kernel, as interface
> between languages are a real pain, and so far I'm not convinced at
> all that this pain is worth the gain, even if that could change in
> the future.

One point I'd like to explicitly address, as it seems to be very
relevant to me when it comes to whether or not the pain is worth the
gain, is how we'll deal with the fact that the rust compiler will tell a
non-negligible [*] part of the kernel developers that they don't have
the skills to write kernel code. Will we have a credible option to offer
there to help people improve their skills set, and how will we deal with
the fact that some people will be left on the side of the road ? Or
would we acknowledge what may be the elephant in the room that this
would actually be a good thing for the kernel code quality ? What about
the impact on a community that is already overworked and prone to
burn-out ?

[*] I have no way to quantify this at the moment, maybe I'm overly
pessimistic, and the number will likely vary depending on areas,
probably impacting BSPs differently than mainline.

> It doesn't help that the showcase seems to be binder,
> code that should have been in userspace from the start.
> 
> Btw, a lot of these aspects also apply to the whole drivers in eBPF
> discussion.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
