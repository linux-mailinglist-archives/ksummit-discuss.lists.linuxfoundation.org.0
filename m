Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3715EC86
	for <lists@lfdr.de>; Wed,  3 Jul 2019 21:11:26 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8ADC8EA7;
	Wed,  3 Jul 2019 19:11:13 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 23BE6E92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 19:11:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9C7EF87B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 19:11:11 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id j2so1731966pfe.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Jul 2019 12:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=9r/cORx1FVjknQ71oSdr2jK85tdytlmbnefKg+jzK2Y=;
	b=bQ0L6wD9nUczjdJ/GKyWi1W8LhiQdcDwDQ9PQ3lYiuR8gVurbstfghQYJFyNEKh6bH
	3ByxqiVgjkLjnd0zvl55Jb17p1IO2/U4tEZx7rcJqDdzBy102I9T4usIyG3tW/jvffO8
	D5aEPvO856IYMoQApJdawnR35FlQKPST5NbSnmBysK4nmZ97fRtZ22uRRDswSkttTLjb
	p7KJEJx5545YiC7M8iQJPeacN4OFu1mePRRaboUMga8ipUBeyPA7iscKglKE+037JUet
	sbGVtPFQmPAiL4ZlCC1kM+vP7mSeCfuBKX1+zW6qXBek2n+F+Y/cPvu9vy0lzCW1k9GS
	b+9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=9r/cORx1FVjknQ71oSdr2jK85tdytlmbnefKg+jzK2Y=;
	b=R2NPeqBRS5Ocv9b5wzkzTl6ebpDdVm83r56s2vFtyqjY6CzMGnX8JXla+GSmDfIXCn
	g3R03XbSyM25+yOlGq7O8CJsGAGxrM1qObj7QkAFcCLJwCTckG2kixRG555aAqzUOFQS
	tDW0/KoD7gNhcyn3q93ZEn50oNe34Pg6P6VAUwJGJ3uFjDsYOtWS9u//1z6u5193pjwF
	y703POJhzoUaAq3/rkLEvzFINomwl7R1fCVumFry5uETPJTbPGnhRH+3IQYGvkkNWJPv
	rDbu0/0bcI/qlnitnbMpCcKdnCeYa6rqiyv1vVFEy6vSSu8MuM19onYe937SthVRMZx6
	3LDA==
X-Gm-Message-State: APjAAAVeW74Ex3ZsWyBVpFdWxlpE9y8cOpXuQrQwSLDOz0Zx9XU1NTHe
	de+khBFsHZ8rcEcpBqO9Lro=
X-Google-Smtp-Source: APXvYqwjtOWfdOFAZCNhOtnHs+bc4W+3thRsDZaJtAI6rse6zsTHk2k3+dc6Aq5Mtac+Dygzr6nvHA==
X-Received: by 2002:a17:90a:32ed:: with SMTP id
	l100mr14443408pjb.11.1562181071207; 
	Wed, 03 Jul 2019 12:11:11 -0700 (PDT)
Received: from [192.168.1.70] (c-24-6-192-50.hsd1.ca.comcast.net.
	[24.6.192.50]) by smtp.gmail.com with ESMTPSA id
	v184sm3257074pgd.34.2019.07.03.12.11.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 12:11:10 -0700 (PDT)
To: Theodore Ts'o <tytso@mit.edu>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <454fdfd3-f45e-e307-c0cb-2dbc91c179e0@gmail.com>
Date: Wed, 3 Jul 2019 12:11:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703135012.GC2041@mit.edu>
Content-Language: en-US
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On 7/3/19 6:50 AM, Theodore Ts'o wrote:
> On Wed, Jul 03, 2019 at 11:56:20AM +0300, Laurent Pinchart wrote:
>>
>> I may have missed the obvious, but while this should work great for
>> patches applied with git-am, what's the expected workflow for patches
>> written by the author of a pull request ? I certainly post my own
>> patches for review on mailing lists, but I don't fetch them back from
>> the list before sending a pull request. Do we want to move towards a
>> model where maintainers should retrieve their own patches from the lists
>> (or from patchwork) ?
> 
> So here's my (Unpopular Puffin?) opinion --- I don't think all patches
> need to have a Link header.  Many don't today, and it's no great
> tragedy.  If you are updating spelling mistakes in kernel
> documentation, or you are fixing compiler, sparse, or Coverity
> warnings, there's generally going to be nothing terribly interesting
> on the e-mail thread anyway.  So why go to extra effort to create the
> link?
> 
> The patches where the Link tag will be most interesting are the ones
> that are adding a new feature, or have something that has sparked a
> lot of controversy.  However, today, merely finding the last V22
> version of the patch series doesn't necessarily help you find the V21,
> or V20, or V19, etc., patches.  Most people do *not* send out the V21
> version a 50 patch series as a reply to the V20 --- and that's
> actually a good thing, because it makes the reply chain in a mutt
> reader like mutt be completely unmangeable.
> 
> And even if they do, how often will it be useful to go through that
> kind of detailed legislative history, even presuming that it exists?
> So 99% of the time, the tag is going to have very highly limited
> value, just as including in the commit description:
> 
> v3
>   - Fixed whitespace nits
> 
> v2
>  - Used an explicit slab cache instead of kmalloc()
>  - Fixed spelling nit in documentation
> 
> is ***really*** not interesting or appropriate.  And putting in a Link
> tag so people can read all of those review comments in all their glory
> is really not going to be all that interesting either.
> 
> Personally, if there is a case where it will be useful, it would
> actually be better for developers to summarize the comments, and
> design alternatives, considered and rejected, etc., in a cover letter,

It would be really nice to have such a summary.  I would encourage
developers to provide such, but not require it.  It is a lot of
work to create such a document.

On the other hand, given a choice between the summary and a link to
the discussion, I would prefer the link to the whole discussion
because the person writing the summary can not predict what detail
(that may appear insignificant at the time) is critical to the person
five years later who is researching the feature.

-Frank

> or better yet in the kernel documentation as part of the design doc
> for a largish feature, and then if it is a cover letter e-mailed out
> to the mailing list, include a link to the URL of the cover letter
> with some text so that a human being reading the commit log will know
> that there is something actually worth their time to read, as opposed
> to being treated to a huge amount of legislative history that, at the
> end of the day, be a complete waste of time to someone trying to debug
> a live production problem causing data outages for their company.
> 
> The reality though is this is a lot of extra work we're asking of the
> developer, so this automated fashion is a technological solution to
> something which is really a social problem --- and hopefully there
> will be a few cases where it will actually result in a net benefit.
> 
> Regards,
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
