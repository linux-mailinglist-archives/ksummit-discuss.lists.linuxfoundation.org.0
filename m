Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB686EE32
	for <lists@lfdr.de>; Sat, 20 Jul 2019 09:23:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D26A1B69;
	Sat, 20 Jul 2019 07:23:42 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D06691A9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:23:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from namei.org (namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 80679E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Jul 2019 07:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by namei.org (8.14.4/8.14.4) with ESMTP id x6K7NXp2026834;
	Sat, 20 Jul 2019 07:23:33 GMT
Date: Sat, 20 Jul 2019 17:23:33 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: Christian Brauner <christian@brauner.io>
In-Reply-To: <20190719093538.dhyopljyr5ns33qx@brauner.io>
Message-ID: <alpine.LRH.2.21.1907201715420.26406@namei.org>
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
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

On Fri, 19 Jul 2019, Christian Brauner wrote:

> There is a close connection between 1. and 2. When a watcher intercepts
> a syscall from a watchee and starts to inspect its arguments it can -
> depending on the syscall rather often actually - determine whether or
> not the syscall would succeed or fail. If it knows that the syscall will
> succeed it currently still has to perform it in lieu of the watchee
> since there is no way to tell the kernel to "resume" or actually perform
> the syscall. It would be nice if we could discuss approaches to enabling
> this feature as well.

Landlock is exploring userspace access control via the seccomp 
syscall with ebpf, but from within the same process:

https://landlock.io/

It may be worth investigating whether Landlock could be extended to a 
split watcher/watchee model.


-- 
James Morris
<jmorris@namei.org>

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
