Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C905A1DBD8C
	for <lists@lfdr.de>; Wed, 20 May 2020 21:05:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41AEB85EF9;
	Wed, 20 May 2020 19:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12E7NEaL7yYL; Wed, 20 May 2020 19:04:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21B528836C;
	Wed, 20 May 2020 19:04:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DA891C0176;
	Wed, 20 May 2020 19:04:09 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9848BC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:04:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9432C88A00
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vtnjeRsi0N94
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:04:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 26FE188A09
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:04:07 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x13so2012501pfn.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 12:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=12E+682P9o2bF6lm6kU5PapC5kE3TokI6ew2I9bs8Vs=;
 b=C9PxPqmfMIeM8fyxnRZEu4V6E6nlbmGcT9SmBOPyti56xv1l7xZufWhnBikU6592Ow
 Xtn8JcoEWuW4JAG99vURjf+KZ2pYaeI+3FU7F9uS7iqC193U1dpESmDrUwi/McS65Dlm
 llDtizVYhaSCTF2CvBsIkjuQ64K1DGp9+kgOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=12E+682P9o2bF6lm6kU5PapC5kE3TokI6ew2I9bs8Vs=;
 b=ueCmMGyuJpi2dyqBN6DeaKeC/taZkKgeseMFS05Fo0J0c5MPQvRUCl5keMs/Lr3K+9
 1AP/epV32J9r8VrX+jhYif3LRbWlzVKyXgqGLYz0yhSrTfSr5au4RSmMmHh3DaJWFfw4
 4dp1ufz+pITBHnPNipdUnSwuFtMOaK2xhHsO2ugZOajYS3ZHE/FNrPQJ8BpCa9JjEKjy
 rborMltFrbKlib5Z8/XuKb16XLJ4ZRE3OiejOd6Xk0hUJFlu9kS8XywXh/dwr4KwHct5
 bwHGu73ddfs0A4oEfPYPnwfg58r/0tMbRq+kdNEGK05AJXkRudr9rHU/FHrI8/2Wyq4F
 9qrg==
X-Gm-Message-State: AOAM533g5SvngnTO5zc+NkjwG/nRDngidGPBJRmiOd7kq1WrhyfGfdj7
 BidoNnZ5kYUqYoYWOkHOA0IoMGcLoW0uCw==
X-Google-Smtp-Source: ABdhPJwXT+HJH5/By6lB8SWHL9O6yv34vtzQOphqvMVGau6W3ZkPQEQiln6F3n9Q4Q8fXAp6gMvvAA==
X-Received: by 2002:a62:8648:: with SMTP id x69mr5765422pfd.278.1590001446482; 
 Wed, 20 May 2020 12:04:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x14sm2706365pfi.60.2020.05.20.12.04.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 12:04:05 -0700 (PDT)
Date: Wed, 20 May 2020 12:04:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <202005201151.AFA3C9E@keescook>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
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

On Wed, May 20, 2020 at 11:27:03AM -0700, Linus Torvalds wrote:
> Don't make this some kind of abstract conceptual problem thing.
> Because it's not.

I have no intention of making this abstract (the requests for expanding
seccomp coverage have been for only a select class of syscalls, and
specifically clone3 and openat2) nor more complicated than it needs to be
(I regularly resist expanding the seccomp BPF dialect into eBPF).

> So details, please.

We've been discussing it all here:
https://lore.kernel.org/lkml/202005181120.971232B7B@keescook/

The example given in the thread was dealing with things like clone3's
struct clone_args's set_tid member, which is a pointer to a dynamically
sized array.

Things seccomp is NOT expected to introspect due to complexity would be
stuff like the bpf() syscall.

Perhaps the question is "how deeply does seccomp need to inspect?"
and maybe it does not get to see anything beyond just the "top level"
struct (i.e. struct clone_args) and all pointers within THAT become
opaque? That certainly simplifies the design.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
