Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id B67456EE47
	for <lists@lfdr.de>; Sat, 20 Jul 2019 09:41:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 778201631;
	Sat, 20 Jul 2019 07:41:22 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D3A8137D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:41:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01A3CE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:41:18 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id e20so32884297iob.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 00:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=qHXUztOm1DYR1MDP0z0M+WrilTmtR6lLE/nVCmyPOXs=;
	b=WzWkFKMoQ5YC75dT+eKc/WjttGH9RoHRw73uxWryuvhSPdePRr2F5EW0d5eg7QQV40
	0mCGnVOZvMPTKMlFPkKkHdceNbC4iz7JI9BKEXNb+4lVzqUooGIhrFA02QmRMkZqXJQY
	Ts0CKrG5+y405qVQgpy/s7kaQ+oxqmgF/mAZCG2xHeJMHhtXI5y2PXIR0ALYgkWjHWc4
	5NRcdtDTRLjJ8aawwXQlQCygttubaJBENYSR+E1o4/3G2AUwZGsS8sYreDJlcf+3bLfJ
	/psF1Qs1eriN1M7Av2tn6ZCR+Ift3fShp6U5conSVuI5P8yjfDigyq67t8WJ1AiTfJdT
	nHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:cc:from
	:message-id;
	bh=qHXUztOm1DYR1MDP0z0M+WrilTmtR6lLE/nVCmyPOXs=;
	b=D2B47PWqbm+VhqdLiUOeAPlSVVyl3nluNEycwaz+MlB3sVX5hIbBG+Lve8ixhewxlf
	/BEtCMidtiu98DOUQ23sypkIi350cqBfXrQ1wzu7ZbH8CsaaYuTgAGUmHL7oqKHMay6N
	uP7RNvzJCP0Lt6xuBODHYVzZLjGyAOd6kOc3ciEvUIO2yWjTeG92FeMQVXYxb6Kc1FLs
	kvrN9vhI6ThWn+SfgKbFjTa6amZg6REiNkBeiXsg71YZO6d1fsXNwdtEUAttNpc5rWqw
	10lisHrYlsLaq83Z9GhIIUX1g9YilL78Rsua8MdQFb6JL+MeWQAODrrlRpSVdiMVaX2T
	bIhA==
X-Gm-Message-State: APjAAAXzivyPbOdTNLpbwXoD9JejHvHIR4fEoc5rd6ggrVkvEUk1cAk8
	wqpJ65P7yT5vQxsGjNoP/G3pZqXOzp0=
X-Google-Smtp-Source: APXvYqxSB06nzEoAi0MnK/3GanNDgTTpIeqIL7clAmELgnTvB08oAS6/5jz52rBFdy6/Axss05B5BA==
X-Received: by 2002:a5e:d51a:: with SMTP id e26mr46437152iom.71.1563608478116; 
	Sat, 20 Jul 2019 00:41:18 -0700 (PDT)
Received: from [26.66.5.199] ([172.56.12.218])
	by smtp.gmail.com with ESMTPSA id
	f17sm30627920ioc.2.2019.07.20.00.41.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 20 Jul 2019 00:41:17 -0700 (PDT)
Date: Sat, 20 Jul 2019 09:41:11 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.LRH.2.21.1907201715420.26406@namei.org>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
	<alpine.LRH.2.21.1907201715420.26406@namei.org>
MIME-Version: 1.0
To: James Morris <jmorris@namei.org>
From: Christian Brauner <christian@brauner.io>
Message-ID: <E90059DC-B0EA-4519-99E5-CD9DD600B4D0@brauner.io>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: mic@digikod.net, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp
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

On July 20, 2019 9:23:33 AM GMT+02:00, James Morris <jmorris@namei.org> wrote:
>On Fri, 19 Jul 2019, Christian Brauner wrote:
>
>> There is a close connection between 1. and 2. When a watcher
>intercepts
>> a syscall from a watchee and starts to inspect its arguments it can -
>> depending on the syscall rather often actually - determine whether or
>> not the syscall would succeed or fail. If it knows that the syscall
>will
>> succeed it currently still has to perform it in lieu of the watchee
>> since there is no way to tell the kernel to "resume" or actually
>perform
>> the syscall. It would be nice if we could discuss approaches to
>enabling
>> this feature as well.
>
>Landlock is exploring userspace access control via the seccomp 
>syscall with ebpf, but from within the same process:
>
>https://landlock.io/
>
>It may be worth investigating whether Landlock could be extended to a 
>split watcher/watchee model.

Certainly a valid point but...
I don't want to rely on landlock for this.
First, no one knows if and when it will ever land.
Second, seccomp is the go-to sandboxing solution for a lot of userspace already.
Often used without a full LSM.
Third, syscall interception to me is seccomp territory. :)
That's to say I'd like seccomp to have this feature *natively* and ideally not tied to
a complete LSM that needs to be merged for this. :)

Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
