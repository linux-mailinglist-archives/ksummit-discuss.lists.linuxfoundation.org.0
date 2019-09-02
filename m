Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC28A5A33
	for <lists@lfdr.de>; Mon,  2 Sep 2019 17:10:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 55607D98;
	Mon,  2 Sep 2019 15:09:52 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48C7AD38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 15:09:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4C5A9709
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Sep 2019 15:09:49 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id n197so27752119iod.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 02 Sep 2019 08:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=snyOEFbyMlrys1WVQq/Ci9pcDj7pUI6cTWMY4lV0coo=;
	b=BUZJ3AqfGGDAd7MrwlHR6roqsZ6tduIn7W8Brp4bv1tQzkL90XtqN/w7QpsMYQoTr/
	a1wueN6higvKx+Ur+OmY1Wt9TgpHbQeNJqne9YpsLFDOipOlRlCH5S0a25qfwG/G4cvE
	5PNu6gCwJQraL5614IkddV8GlqcvmSBIv3/bM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=snyOEFbyMlrys1WVQq/Ci9pcDj7pUI6cTWMY4lV0coo=;
	b=pTpuaLKDxvCykh2MbDZ494F7RpjGovd1FVF5FcaUpMJJukSlcL1ErOAYhDAm08siCr
	nSfhzXm00ipfF/xm+ddcOso7OqPuwi+h4Y8R59L98ogLtZ0jgwRx+h75W+wVu4fKAs/n
	YMd+L6ZamDifUXCsA1xBIK9GeS+/UC/8yoOc5e5k3Hw1zHyvI1zAww5wEL+42a/9GP20
	+dWiI6OoahA6hG/Pd8bodl/9S7ac7u2pCMPa2BqD6yrBhjmaEKsKGeqIamJu+6J3SiLH
	n+9UnkYD8VOA+TM6luhAl4Ik2rvhCtzUDpXKgWpI85vbYTmmLoFU7x4ZJ/gg2yP2nSC9
	nPmg==
X-Gm-Message-State: APjAAAX3D4z3l+zeaBQLPDXVvJQFKjEcvQQ4xjuUzxVmHZfmxE9f60xt
	FTPooZS+Xkcz7E7YtAUAAc/X2a8R
X-Google-Smtp-Source: APXvYqzMdjzrxnuVyoLcSQfQZ37m/gxCCelGHHlbauulVlFhtntWSlqybzGKuD11HLNOKoYJNTH0xQ==
X-Received: by 2002:a6b:3906:: with SMTP id g6mr17685761ioa.48.1567436988677; 
	Mon, 02 Sep 2019 08:09:48 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
	[24.9.64.241]) by smtp.gmail.com with ESMTPSA id
	a21sm11776498ioe.27.2019.09.02.08.09.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Sep 2019 08:09:47 -0700 (PDT)
To: Bjorn Helgaas <helgaas@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <0bdf3e0e-e352-8cac-5c38-fd6086681e8e@linuxfoundation.org>
Date: Mon, 2 Sep 2019 09:09:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830135857.GF7013@google.com>
Content-Language: en-US
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On 8/30/19 7:58 AM, Bjorn Helgaas wrote:
> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
>> ...
>> Are there some additional topics that you'd like to suggest that we
>> discuss at the maintainer's summit?
> 
> I don't have an effective workflow for managing incoming patches.  I
> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
> to put patches on topic branches, review them, polish them, merge them
> together into a "-next" branch, generate pull requests, etc.
> 
> I wish there were a collection of the workflows and scripts people
> use, maybe even in the kernel sources so they could be shared and
> improved.  Some short screencasts could help visualize and pull things
> together.  I know a lot of this stuff is "out there" somewhere, but
> I'm not aware of any organized collection.
> 

This is a great idea. Folds in to my request make the script that pulls
in the Link tag widely available.


Patch version changes in commit logs?   (Shuah Kahn)
      How to make information about how commit has changed while being
      developed.  (A solution which has already been adopted by some
      maintainers is to use the Link: tag in the commit discussion).
      There have been a more recent discussion in this past week under
      subject line "Allowing something Change-Id (or something like it)
      in kernel commits".

I have a work-flow that works and I would like to learn from others and
improve mine.

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
