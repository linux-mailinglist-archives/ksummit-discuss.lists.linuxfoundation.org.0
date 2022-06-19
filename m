Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 328465508D5
	for <lists@lfdr.de>; Sun, 19 Jun 2022 08:14:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA52E826EA;
	Sun, 19 Jun 2022 06:14:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA52E826EA
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KruKbeeF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQ6frSEBNH72; Sun, 19 Jun 2022 06:14:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2C65D826FB;
	Sun, 19 Jun 2022 06:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C65D826FB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B36C7C0082;
	Sun, 19 Jun 2022 06:14:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A0E68C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 06:14:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B14F826E5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 06:14:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B14F826E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wsiCkgyMQ4bZ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 06:14:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DBE3826C8
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DBE3826C8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 19 Jun 2022 06:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xxHbe2nz0yzLQaJtQRwpNORmauX0ZMgk81/v5gP+S58=; b=KruKbeeFR4YOkIU/ix/CzKYfF6
 3nGW9NLTNsMNv078FoLudLQENwD/eKDemEtYYuFkEFqeUkHI1AL5v+mbRIkKtbbRvmJ9OzougitlY
 +L/17w6C5PLNjNJtu7nQWG4byhu/CEdSAtWI0KmFUXQP3ILGjMf4NapS7dpWRI6vxG79hrNgPvyf/
 IXhORNevI2Ec1jjH1qA2haK6r5fVzxpJxiHXnLmHljcr7+uZLYbst0UAEPSW+If27TUGIGJiawAQt
 NUGJEY3GCJTJq/mnnZcBk85tT02mL5hbuA0srGf3HeevSUlYE/JVBTrJUexMD5Ex+3p2HGZL5x5P/
 BuDjg9rw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o2oC7-00DKl5-Vf; Sun, 19 Jun 2022 06:14:00 +0000
Date: Sat, 18 Jun 2022 23:13:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <Yq6+p+aRCjeZ7QsS@infradead.org>
References: <CANiq72nNKvFqQs9Euy=_McfcHf0-dC_oPB3r8ZJii2L3sfVjaw@mail.gmail.com>
 <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yq44nyu7P1uhBVGi@pendragon.ideasonboard.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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

On Sat, Jun 18, 2022 at 11:42:07PM +0300, Laurent Pinchart wrote:
> All previous topics but this one are technical. To restore the balance a
> bit (and also because I believe it's important to the success of this
> project :-)), I'd like to also discuss the impact on the kernel
> maintenance at large, beyond just the maintainers who opt in to be early
> adopters of rust in their subsystem.

Yes.  That is I think the most important point.

I've played around with rust a bit for userspace project, and there is
things I like a lot like strict type safety and the ownership model, and
things I detest like verbose and unlogic syntax, the cargo cult of
vendoring libraries instead of a sane shared library and versioning
model (althought that should be largerly irrelevant for the kernel),
and compared to many other languages it seems overall rather sane.

But I'm really worried about the impact on the kernel, as interface
between languages are a real pain, and so far I'm not convinced at
all that this pain is worth the gain, even if that could change in
the future.  It doesn't help that the showcase seems to be binder,
code that should have been in userspace from the start.

Btw, a lot of these aspects also apply to the whole drivers in eBPF
discussion.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
