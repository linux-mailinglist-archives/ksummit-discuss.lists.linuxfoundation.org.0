Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA99698E1
	for <lists@lfdr.de>; Mon, 15 Jul 2019 18:11:57 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 59B8BC86;
	Mon, 15 Jul 2019 16:11:44 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 74710B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 16:11:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03AC671C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 16:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YhUt+rO6WzxENTscSzONiI1s5Njjy9kr3Jo2Yka/Q7c=;
	b=i5nEoeYOc7z/e1x5jYbkqec9x
	oGuHcXCpA9t6u5XZuUr+50ENSxEoUYKc+QtKob22twGOK2HQSN76t/WqncYzq8JeC3dgu8Dzp6Cdb
	NH7iwDLi8xPwCONdyEBezVK7T4OapyWqZ7+5I4Lckm/quVKrwZxmIs9boF3yaKdyQOJZ2zGlNWuIx
	MtC4IEqvjacpoV6f8aqEWaoqxD++AHgM6R96KzBmRyiLIABxAoyfyPsnQhl/M4xA1cHvPoYd7AwdD
	U6rBLxPJBCnshl7aup1elWZXXO5FuptF71ighLWuteAJAHjqx0DvdROowCnUMv6YnwtPIZiZEVk66
	OQh7XUAVw==;
Received: from [189.27.46.152] (helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3Zj-00052g-H0; Mon, 15 Jul 2019 16:11:39 +0000
Date: Mon, 15 Jul 2019 13:11:36 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Message-ID: <20190715131136.6ec26015@coco.lan>
In-Reply-To: <20190706171724.GA12534@kunai>
References: <20190706142738.GA6893@kunai>
	<20190706165214.GB18182@mtr-leonro.mtl.com>
	<20190706171724.GA12534@kunai>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
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

Em Sat, 6 Jul 2019 19:17:24 +0200
Wolfram Sang <wsa@the-dreams.de> escreveu:

> The "problem" with a new reviewer is that I don't know if all aspects of
> a patch have been reviewed or just a subset. 

That's a good point.

While receiving feedback from some -doc patches I wrote, I guess we
currently have something that we can improve for acked-by/reviewed-by
tag description: how to indicate a partial review/ack?

I received several such acks with things like:

	For driver_foo:

	Acked-by : me <my@email>

I also received such acks as:

	Acked-by : me <my@email> # driver_foo
or:
	Acked-by : me <my@email> # for driver_foo

I guess we could agree on a "syntax" for that, with could be easily
be parsed by scripts, documenting it at
Documentation/process/5.Posting.rst.

I'm in favor of:

	Acked-by : me <my@email> # driver_foo
and:
	Reviewed-by : me <my@email> # driver_foo

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
