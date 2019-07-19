Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E59E06E5C4
	for <lists@lfdr.de>; Fri, 19 Jul 2019 14:33:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3E04025F9;
	Fri, 19 Jul 2019 12:33:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A88325E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 12:33:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2231E891
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 12:33:12 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9B0922184E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 12:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1563539591;
	bh=i42y1c+TyfjAFEjbPOnF7L6mpXgPbELBnHOXpThF+0w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=YbRAigVtblh1Aaa0GkFYY3jglKzRdAiFDOPJL+2kq5qYKOWFqEhgCvLE3fJAi/52p
	zsndG3d4COMM7SbaG0SXUARcJUQt/I2YVYdwryXPFN2vGLM5WNsrcC8f9IDyJdAElo
	5DusWPY29nh0OrqqASeG+yoxFVFA28zw30d//9kw=
Received: by mail-wm1-f46.google.com with SMTP id p74so28621023wme.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 19 Jul 2019 05:33:11 -0700 (PDT)
X-Gm-Message-State: APjAAAWlVwAg/1o5DipH3jmvGtmnE08kEB4wLnas/Hn186dVE8/bFkk8
	kMRHgexl6CTjH/bDZW0iWHDrspQK7ex8ARkKOBPQnQ==
X-Google-Smtp-Source: APXvYqzljCN5XMKPqI1Y7gdtqjGtuMgq3Id7oGQdfDym4qlqHLDkHKkRGvLFSvxpU9JVCElzfdIfAnRJ1zYDUXEhQVw=
X-Received: by 2002:a1c:c5c2:: with SMTP id
	v185mr51156342wmf.161.1563539590236; 
	Fri, 19 Jul 2019 05:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190719093538.dhyopljyr5ns33qx@brauner.io>
In-Reply-To: <20190719093538.dhyopljyr5ns33qx@brauner.io>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 19 Jul 2019 05:32:59 -0700
X-Gmail-Original-Message-ID: <CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
Message-ID: <CALCETrVpbSDraiwJRmOj28wepTjEPiSDQz=DUuSig_P1rSGZ6Q@mail.gmail.com>
To: Christian Brauner <christian@brauner.io>
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jul 19, 2019 at 2:35 AM Christian Brauner <christian@brauner.io> wrote:
>
> In light of all this, I would argue that we should seriously look into
> extending seccomp to allow filtering on pointer arguments.

I won't be at LPC this year, but I was thinking about this anyway.  I
have the following suggestion that might be a bit unorthodox: have
syscalls opt into this filtering.  Specifically, a syscall that
supports pointer filtering would be refactored the way a bunch of our
syscalls are already refactored.  The baseline situation is:

SYSCALL_DEFINE1(syscallname, struct foo __user *, buf) { ... }

Instead, we would do:

SYSCALL_FILTERABLE(syscallname, struct foo __user *, buf)
{
  int ret;
  struct foo kbuf;
  ret = copy_from_user(&kbuf, buf, sizeof(buf));
  if (ret)
    return ret;

  ret = seccomp_deep_filter(syscallname, 0, &kbuf);
  if (ret)
    return ret;

  return do_syscallname(&kbuf);
}

In principle, if we know we're doing a FILTERABLE syscall, we could
skip the initial seccomp invocation and just defer it until
seccomp_deep_filter(), although this might interact badly with any
SECCOMP_RET_PTRACE handles that change nr.

To make this robust, it might help a lot if the generation of these
stubs was mostly automated.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
