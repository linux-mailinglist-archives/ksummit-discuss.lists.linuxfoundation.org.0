Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C31CA7279D
	for <lists@lfdr.de>; Wed, 24 Jul 2019 07:52:46 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CA562DA6;
	Wed, 24 Jul 2019 05:52:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B734A9D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 05:52:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62AAE891
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Jul 2019 05:52:31 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s1so14310971pgr.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 23 Jul 2019 22:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=sbh54ugiymViupoJb4AV59uVS2uizW6NNRJYagvFwAo=;
	b=UM3DEvjs1MccrD+JKG1oh9JCvwc25Uu4Bi24RYuDB40kgbwZaokN7R7vbyU0qm0ib1
	+e3kSz6HJyLwW0opGaTfrSH7u7iPC8ZQzTOmPAWsNxdeDtEKElDaGP3AqPFjrxpu/goj
	9FQnaHbu+IwcaoWZFSRbuxLEMvhokaFXUqM6rUtBdxHq4Hokroqk6Qjb4LTz35/6wDUD
	L0K8tP+pFCf7bpt+z6yubOa1fK6NQBhl8EBs7m6GC7JRdnGwb2hIPj00vvAkDHkonfGr
	PnC208lG3OKLrw5N6yf/dmih6lIqDmx3Am1Q4B7Gt2Pc8U4KZ2A8v5EXEwjNmvh2+c+B
	HB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=sbh54ugiymViupoJb4AV59uVS2uizW6NNRJYagvFwAo=;
	b=B2P7NgtJ6JrtE+yUgA2agI/nQnnFIfiQ/u0DEHMtsZFMd36zTWOVu3c3gvhxuJ3gio
	umCo5O02TfS6ahMMn0mXT1nB6lcr1aOePcE6gY1YpVTslQ5OhG3BtEVd8l3KABIw7lv4
	Vhn9L5q/z7/bPvLFfEH5732dCky4khjNTc+xlFIyhLbThBJ/kO9TpjfJaTIxcR7HUKRm
	KF3fU2tj3QQXc+7cSjTdcKZsDgQc1J0eEpS+Godpe9+G47Fqh7dAmNU3NuRl+DjtqxMi
	GldZ1Oj0DMpDVle2Ye32UxBb4yy1HNH/lqiTHZvYtrqp6sQuSgzoOaI83wXay5QWMb0w
	L/yg==
X-Gm-Message-State: APjAAAWiWU7bDb4Wh1CGlI8t04tAeem5Rd7R3adpCyGphf4hTalyJaRK
	/vY4xyRxRW/HevURGHirNCkMcOkq
X-Google-Smtp-Source: APXvYqwgGWt8VhjAJscU4weaqgO74482hyTR8uMISYP70XFcNLBUrsKokreoqsV3jyv1a54B0R7KBQ==
X-Received: by 2002:a17:90a:22aa:: with SMTP id
	s39mr85355892pjc.39.1563947550607; 
	Tue, 23 Jul 2019 22:52:30 -0700 (PDT)
Received: from localhost ([110.70.52.108]) by smtp.gmail.com with ESMTPSA id
	o129sm9603749pfg.1.2019.07.23.22.52.29
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 23 Jul 2019 22:52:29 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:52:26 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190724055226.GA15444@jagdpanzerIV>
References: <20190530055947.GA29812@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530055947.GA29812@mit.edu>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Amir Goldstein <amir73il@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
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

Cc-ing Jan, Amir, Jeff

Hi!

On (05/30/19 01:59), Theodore Ts'o wrote:
> From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
[..]
> CIFSD is a new SMB server implementation for the Linux kernel
> (out of tree, as of this moment), intended to be minimalistic,
> yet providing better performance than user-space analogues.
> This talk will briefly introduce CIFSD, its architecture (high
> level) and its main design goals: outline components, their
> responsibilities and communication protocols.
> 
> The work is still in progress, we are in pretty early stages,
> so in the second part of the talk we will focus on current state
> of affairs and our future development plans - we are looking at
> possibility to merge CIFSD with the upstream Linux kernel,
> sometime in the future.

To extend the topic with some discussion points:

- We are facing a rather familiar problem. Basically, SMB2 CHANGE_NOTIFY
  [1] is something what fsnotify normally does, except that we can't use
  it in cifsd kernel module. I see that NFS guys had [2] same issues some
  time ago.

  So the question is - how to do fs notify style monitoring in a kernel
  module (nfsd, cifsd)? Any chance the kernel can start exporting fsnotify
  symbols?

[1] https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-smb2/598f395a-e7a2-4cc8-afb3-ccb30dd2df7c
[2] https://lore.kernel.org/linux-fsdevel/1441968882-7851-5-git-send-email-jeff.layton@primarydata.com/

	-ss
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
