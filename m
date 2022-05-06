Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C167751D73A
	for <lists@lfdr.de>; Fri,  6 May 2022 14:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA93440150;
	Fri,  6 May 2022 12:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDIVmKkVzcVf; Fri,  6 May 2022 12:02:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 29B05404F8;
	Fri,  6 May 2022 12:02:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CC3B3C002D;
	Fri,  6 May 2022 12:02:19 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 85E69C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 12:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 74B7A82F87
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 12:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbUXMe1VJOqO
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 12:02:12 +0000 (UTC)
X-Greylist: delayed 00:05:04 by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AF4182BC8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri,  6 May 2022 12:02:11 +0000 (UTC)
Received: from mail-yb1-f178.google.com ([209.85.219.178]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1N0G5h-1nzXTq2gTv-00xMGK for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 06 May 2022 13:57:05 +0200
Received: by mail-yb1-f178.google.com with SMTP id m128so12412704ybm.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 06 May 2022 04:57:05 -0700 (PDT)
X-Gm-Message-State: AOAM533KGSFA6ckPuvUwtkamGMhchgiT0yhfmcBBY/p1bC+t69LD862x
 OJNjaaXrRY+ck5CQ2vHnPvHX7Cov8qfW6yFtCGQ=
X-Google-Smtp-Source: ABdhPJxRJvVp4WSdDwMumBobaUVH2AKop8JezHcIZ3thL7fqDYwNyZ/neaZTOOGPQg//WN+9ZbOU1lJxM8I51kYcvzY=
X-Received: by 2002:a25:c50a:0:b0:647:b840:df2c with SMTP id
 v10-20020a25c50a000000b00647b840df2cmr1936326ybe.106.1651838224389; Fri, 06
 May 2022 04:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220506091338.GE4031@kadam>
In-Reply-To: <20220506091338.GE4031@kadam>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 May 2022 13:56:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>
Message-ID: <CAK8P3a0DY2b15yyzpwsjOCqOALfTbsmYf1kTnQZF5wPW8mtFbQ@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
X-Provags-ID: V03:K1:/7UnBfZ2tUTWW1aZQib0j9kXg7E9zVQI15C2t6IavXOL3HDZC7F
 dlFkkmrTdx3POWF/KGP9e8KXnRbbJ8RMTpNkjXMzQ27YC87NBp63zEWYKuxtgU3ZPRmyuoO
 krKyj1cQgAnPV0xgBdWWy9mXWqBkD0TJLrj4qr4xzpVPmDQmgIWBKzMIyRBQ5zVjiuHRDxQ
 OfQx2sMfF9ZB5YrVkdzTQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FRFNxN0mbgs=:TBIGn7D/mXUHMera5H0H7e
 j1ZOYj1MFB6KdeyCG+24BoVIrpJR73h5hFcLzdcJFncq+/rsoPHL93bjxBCjnvpnKdrj+9fKf
 ykVlNg4pIFg7nZzCVb4vj0Njvj8J9inn/JGD7Eih6wMsSy7gsE1V7PykHU75Ug5W9dXjatav+
 wekX/sjf5IgIQ72ImXM1juiZ0EzHBkAAwgux8dGQLIZSKuC9ZNWrwsb13TXvKgzjJhToCQhTS
 CFElQQAlCYDFwVXPktGJcT2EmHGSPFzxlweNbNEGzUiNjXL2z4ZTYD+eoPSFIM/G1OENgTFkJ
 IBiHSwvoGwhjVHl5Kj8i2TNOYFpxklqpiRoPt+8CWP5+wnRdSRB9D1J85bw26AVEfPBTC9zeS
 D7a7yJYTT5PvZZOf/JPrCIqdR7/3xbp73/r4Ga07a9s30b3WUvfCcm+awW90frmVg99gYMIcn
 L8AmwGiwzxPPw8fiXd7WApolAbQsIpQBY/5VS8hgYeFlSzbam+MlwJAup5rsZ3F9yonHEZKtd
 rkSiu8+QGojHPH04ocaGmyJ5vjZPkn9NDrzilzabgYTIPQ1o/xz6dxlEIqB4638mXqARhrMvG
 gbNJss6UWXX3mdwKZT0X1eas4Xk827xD141YjrZ9wi8vgRHLzBrz8K+Hi+YU0ggKTK0lq/4zh
 BDblEHcPxZ/V61Ho4N3OQCxQw5hjmBYQP8pkyARHvrjAorQQo0fkn+AeZiHvoOr2hiLoYklut
 2W2B4VcEnSAsVJ9PnIdTuc4FdRza/V+sRKd8NqsQkLtXGOZGBU1vJ7tIVtYExLi4FRIhUcD/h
 lCFgId6XeMMhzdSaQjWv4PgnIJj3c/qSn3P4zBe57v0r+jUNBo=
Cc: Nathan Chancellor <natechancellor@gmail.com>, kbuild@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 kbuild test robot <lkp@intel.com>
Subject: Re: [Ksummit-discuss] uninitialized variables bugs
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

On Fri, May 6, 2022 at 11:13 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:

>
> It's frustrating.  Sometimes the false positives are hard to analyse
> because I have to read through multiple functions.  A lot of times
> when I write a patch and a commit message Nathan has already fixed it
> so it's just a waste of time.

Agreed. I'm not actually checking for those warnings on gcc any more,
but just the clang warnings point to a bigger problem.

> It's risky as well.  The Smatch check for uninitialized variables was
> broken for most of 2021.  Nathan sometimes goes on vacation.
>
> I guess I would hope that one day we can turn on the GCC uninitialized
> variable warnings again.  That would mean silencing false positives
> which a lot of people don't want to do...  Maybe Clang has fewer false
> positives than GCC?

I think for the gcc warnings to become useful again, we may have to
wait for a future compiler release. I have not checked gcc-12 for this,
but it's a very old topic.

Fundamentally, it's impossible for any compiler to do this correctly,
because of the halting problem. gcc apparently has some heuristics
that worked well enough in the past, but it misses some obvious
cases and causes false positives in unexpected places, often
depending on optimization flags.

Recent gcc versions are much worse than older ones, since the
inlining changed in a way that caused a ton of false-positives.

clang is generally better at catching the simple cases reliably,
and it does this independent of optimization flags. However, it
stops at the function boundary, so it never catches some of the
cases that gcc was good at.

The gcc static analyzer apparently gained an option[1] that
works similarly to what you have in smatch. I have not tried
using this, but this may be something we can do in CI
systems that may not want to run smatch for some reason.

        Arnd

[1] https://gcc.gnu.org/onlinedocs/gcc-12.1.0/gcc/Static-Analyzer-Options.html#index-Wanalyzer-use-of-uninitialized-value
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
