Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E4749617C4
	for <lists@lfdr.de>; Mon,  8 Jul 2019 00:01:47 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 21A9A1F66;
	Sun,  7 Jul 2019 22:01:29 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05BCD1F5B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Jul 2019 21:56:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 866D47D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Jul 2019 21:56:13 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i18so6619532pgl.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 07 Jul 2019 14:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Kx1f/IdquCtMi5exl/yZ5TsiuzjXj0xqeN+sxJ+Ccas=;
	b=QE7kibjRJzOXHwKj55Rjresx2YqsL9oEdA3KBxwBMTbBZ/9qogntYnDlDOwloB0aaK
	swPzE5Id3hNWVZBWsmu50R3/1VpZgGS+m2V3VZRRtT/9fopB/TeX3dCAfdjFj2WoMP2l
	d+SLpq6EjuOfBzmS8FYv4QsRu2ggpOxswTAkaLw9X4JTs4MPN8b+Vh/4pVyOdCxftRzq
	24SXcdJ0ib9JRYg4YVDB1Nk9WzdBisfWLpgXJY30c35VPXI6DRfg5aMKNxCEiXSs/Htl
	XKNTUtp6i1MnU491m7FQw5b8bbAAniZmvpjcQE5OTAMS+wg0maHNBWuia54kXXzbiBZU
	RtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Kx1f/IdquCtMi5exl/yZ5TsiuzjXj0xqeN+sxJ+Ccas=;
	b=k51O9C1n9t8B6AnCAxeJDhTaqJdMnxuKRFWL6zRkAyQVYIZVt0/22BaiYkLI0dncN1
	/reLbb3l0LdNZy3VvqiiRv+c4M47LHmr6ylzh3DiT7kQHuuJlK3U1wsjdw5KAxIildT5
	qd2A4An7y5TQoh6/qigrEciDUeHkuTZ5G3tZWIx2/N7cNtnh/jH88uq/9Uwt6pflCEei
	EcG+vWYegVHbar9Nc+XtTTlatvfKSeAxy8L9zEk7X+y3a0R1uMdI/VwzCYGvcWemE4/8
	ZuXE2RW9VMpXvxw4HhK+xQzlb70AsIHXvCZppyGJTBe+AKNkhhOOZfWuUz4voB1/vmBe
	wsKQ==
X-Gm-Message-State: APjAAAVYXCwj+nEPraW0NkySP7eEMXBPiD5/wjl2dbhRBSmLvmpnQvCy
	cLPQ7+7DLHLEGziTp2Ss9xg=
X-Google-Smtp-Source: APXvYqyOzqzjTLC5gpMN49bSrvyEeLFCyX+EEqExA9yZFuO6EdV95PbKpHgEvOx55hhTVygn25YElA==
X-Received: by 2002:a63:d756:: with SMTP id w22mr18886900pgi.156.1562536573066;
	Sun, 07 Jul 2019 14:56:13 -0700 (PDT)
Received: from [192.168.43.210] (mobile-166-177-250-25.mycingular.net.
	[166.177.250.25]) by smtp.gmail.com with ESMTPSA id
	o13sm15682010pje.28.2019.07.07.14.56.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 Jul 2019 14:56:12 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>, Linus Walleij <linus.walleij@linaro.org>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
	<20190706044238.GE11665@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <c621c13f-fcb8-4ee0-eeeb-9e061888db17@gmail.com>
Date: Sun, 7 Jul 2019 14:56:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190706044238.GE11665@mit.edu>
Content-Language: en-US
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

On 7/5/19 9:42 PM, Theodore Ts'o wrote:
> On Fri, Jul 05, 2019 at 11:26:22AM +0200, Linus Walleij wrote:
>> I would have to dig them all out of lore one by one to get
>> the picture (and I guess I will). The story of CMA is a really
>> interesting one, and now it is part of the MM core.
>> Documentation/cma is pretty empty.
>>
>> Asking Michal, Marek and Joonsoo who all worked hard on
>> this to summarize the development and make the design
>> and evolution of this feature understandable would be a
>> pretty big development task in itself so I'm not gonna.
> 
> I assume you want something more detailed than this article on LWN?
> 
> 	https://lwn.net/Articles/486301/
> 
> I vaguely remember there was a presentation at Plumbers, but of course
> that was a long time ago, before we were regularly recording
> presentations at LPC.
> 
> It may be that best sort of thing will be conference presentations
> and/or refereed papers.  For example, there will be a 2019 Usenix ATC
> about EROFS.
> 
> 	https://www.usenix.org/conference/atc19/presentation/gao
> 
> Of course, asking developers to write refereed papers for submission
> to Usenix, FAST, etc., or even giving a presentation at Plumbers is
> also an awful lot to ask.  :-)

Then the next step is to have a way to find those papers.

Search engines are sometimes helpful.

For the Embedded Linux Conference (ELC) and Embedded Linux Conference
Europe (ELCE), there is an easy to scan table of presentations and
their slides and videos for each year of the conference.  It is a
two step search, the top level is a link to each year of the
conference:

   https://elinux.org/ELC_Presentations

then following the link from there gets you to the table of
presentations, for example ELCE 2018 is at:

   https://elinux.org/ELC_Europe_2018_Presentations

An example of a more organized list of conference presentations for
one subsystem is a reference to devicetree conference presentations
at:

   https://elinux.org/Device_Tree_presentations_papers_articles

Each presentation is listed twice, once by topic area(s) and once
by date.

-Frank

> 
> 					- Ted
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
