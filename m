Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D48E69995
	for <lists@lfdr.de>; Mon, 15 Jul 2019 19:12:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EEB4CEE5;
	Mon, 15 Jul 2019 17:11:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FB46CC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 17:11:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7C2D8C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 17:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rty09um3cpG+1QRbANHUgDMnxpYwSJILiwmbbeP3Olo=;
	b=gJHvHqbn/L9Boogae3ybEPo/T
	dyMpE2JDnc3i20NqqAKNJRWxHFSXBrPtyFmv2RWHbCy0zQUf+xrQ6zm9fT0D/3jdmNBTPwPhzdRuP
	NhR33G0sm9pxd7QQJX+Ns+M8ZPKMcLnUCBotOkipGI7SDPuzOc/SkHmOYMFBHkbflAjIjSeGMA98i
	/9tXBT73E3VKjxW5wR/kBUwPJgxawljx9S84xFWpzll51EzH6cFuRlsf1UIihIHWJdA0Yd9NbWqfs
	3h5g96MIAwBYVsvmzfbFm8+kwOM10axKgrcSPgV6PCuLGRpe6zskxhPF0Dcma8HNZpLtJLl+V8+jk
	PhkXt5DsQ==;
Received: from [189.27.46.152] (helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4Vx-0001vF-Rz; Mon, 15 Jul 2019 17:11:50 +0000
Date: Mon, 15 Jul 2019 14:11:46 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190715141146.1f7b17fd@coco.lan>
In-Reply-To: <20190715170045.GB3068@mit.edu>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
 meaningful
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Em Mon, 15 Jul 2019 13:00:45 -0400
"Theodore Y. Ts'o" <tytso@mit.edu> escreveu:

> On Mon, Jul 15, 2019 at 12:58:00PM -0300, Mauro Carvalho Chehab wrote:

> I'd suggest changing the text to read:
> 
>  	 - Acked-by: indicates an agreement by the maintainer or
> 	   reviewer of the the relevant code that the patch is
> 	   appropriate for inclusion into the kernel.

Yeah, that sounds clearer.

> My concern is that if we have dozens of "Acked-by" by people who are
> not domain experts in any part of the code in the git log, it's just
> noise in the system. 

Agreed.

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
