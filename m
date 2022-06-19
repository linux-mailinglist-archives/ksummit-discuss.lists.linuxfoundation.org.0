Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5295B550B30
	for <lists@lfdr.de>; Sun, 19 Jun 2022 16:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC710408E2;
	Sun, 19 Jun 2022 14:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC710408E2
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.a=rsa-sha256 header.s=20151216 header.b=nt4IwgcH;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.a=rsa-sha256 header.s=20151216 header.b=nt4IwgcH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vX5LBUEi9qiP; Sun, 19 Jun 2022 14:27:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C8898408E5;
	Sun, 19 Jun 2022 14:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8898408E5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5AB82C002D;
	Sun, 19 Jun 2022 14:27:18 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABBC5C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8644340306
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:27:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8644340306
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=hansenpartnership.com
 header.i=@hansenpartnership.com header.a=rsa-sha256 header.s=20151216
 header.b=nt4IwgcH; 
 dkim=pass (1024-bit key) header.d=hansenpartnership.com
 header.i=@hansenpartnership.com header.a=rsa-sha256 header.s=20151216
 header.b=nt4IwgcH
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ik6KU5cihsXE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:27:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65F7D4042F
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65F7D4042F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 14:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655648833;
 bh=YwT+Y37kVtHvsCsmrguvX/nPJUqqzvkGyEYKNfbiMfk=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=nt4IwgcHTwsdDZkOKIr9tAEey+lYugk28l43Gi+QaWNHmMEjvGR/vwE1CSwsv4X1t
 qyVzvXih419qx1pK85jlQ2d/WHa300UlveFLwj+ExyOpTQIBp07V2PHPPX+1M+ZcES
 hwLI+nWafqrRmKNeBWw32/sbWUsD+IWykJ8NDs8A=
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id D48851281C3D;
 Sun, 19 Jun 2022 10:27:13 -0400 (EDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 3DaO7yftkk28; Sun, 19 Jun 2022 10:27:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1655648833;
 bh=YwT+Y37kVtHvsCsmrguvX/nPJUqqzvkGyEYKNfbiMfk=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=nt4IwgcHTwsdDZkOKIr9tAEey+lYugk28l43Gi+QaWNHmMEjvGR/vwE1CSwsv4X1t
 qyVzvXih419qx1pK85jlQ2d/WHa300UlveFLwj+ExyOpTQIBp07V2PHPPX+1M+ZcES
 hwLI+nWafqrRmKNeBWw32/sbWUsD+IWykJ8NDs8A=
Received: from [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b] (unknown
 [IPv6:2601:5c4:4300:c551:a71:90ff:fec2:f05b])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 19C541281C2B;
 Sun, 19 Jun 2022 10:27:13 -0400 (EDT)
Message-ID: <cefa5e41b74c96c81003cfd421cf754a03cc7f52.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Jens Axboe
 <axboe@kernel.dk>
Date: Sun, 19 Jun 2022 10:27:08 -0400
In-Reply-To: <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
 <Yq6+p+aRCjeZ7QsS@infradead.org>
 <Yq70keAYGQQmyJLm@pendragon.ideasonboard.com>
 <2513dc4528c71d34d400c104e91ada6517869886.camel@HansenPartnership.com>
 <d3ba4011-a31d-05fa-b5de-808a1a5ee56f@kernel.dk>
 <Yq8qaqr673UFFG6y@pendragon.ideasonboard.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: Christoph Hellwig <hch@infradead.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, ksummit@lists.linux.dev,
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

On Sun, 2022-06-19 at 16:53 +0300, Laurent Pinchart wrote:
> On Sun, Jun 19, 2022 at 07:19:38AM -0600, Jens Axboe wrote:
> > On 6/19/22 6:56 AM, James Bottomley wrote:
[...]
> > > All that said, I expect once we start getting rust based patches,
> > > it will quickly become apparent where the rust receptive
> > > subsystems are and I would expect reviewers in those subsystems
> > > will quickly become rust fluent.  This doesn't answer the pain vs
> > > gain aspect, but I suspect we won't know that until we actually
> > > try.
> > 
> > FWIW, I agree with you here, James. And I have to say that the
> > original sentiment expressed here by Laurent is weirdly elitist,
> > and not something that seems positive if that's the case. I'd
> > suggest re-calibrating that mindset...
> 
> I'm not sure about the elitist part, but it's certainly not a
> positive statement. I'm concerned about the pain that rust in the
> kernel would inflict.

I get that, and I think it's a serious concern.  I just also think we
would waste more time second guessing this issue that we would consume
if we just tried it.  It's not like allowing Rust into the kernel is
some sort of Rubicon that once crossed we can never go back.  I think
we won't know the pain vs gain until at least a year into the
experiment of accepting Rust.  Even at that late stage, if everyone
agrees it caused more problems than it solves, I bet it could all be
quickly excised.

So the bottom line is I think while we have a community of volunteers
willing to try it we let them on the understanding the results will be
evaluated at some point.

>  Whether it's worth the gain or not is not for me to decide,
> but I'm certainly concerned that it could lead to a catastrophe if we
> don't carefully think about the issues, acknowledge them, and find
> ways to solve them. I don't think winging it is a real option here,
> but I'd be more than happy to be shown that my concerns are not
> founded :-)

Have more faith in the community and open source process. We've screwed
up many times (devfs anyone ...) learned from the mistake and fixed it.
I'm happy to bet that accepting Rust will be no different from all the
other screwups we allowed in and later fixed.  So I don't think there
will be a catastrophe.  Either the rust experiment works or it will
become fairly quickly apparent if it doesn't and it will get removed. 
The worst case, I suppose, is that the benefit is marginal in which
case there's no consensus on removal vs continuation and we simply
continue through inertia.  I bet in that situation Rust penetration
will be fairly minimal and confined to enthusiastic subsystems with the
rest taking steps to isolate themselves from it.  What we'd need in
this case is some opinionated person running the tree and able to make
the call for us ... now who could that be?

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
