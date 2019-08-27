Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D45E9E93C
	for <lists@lfdr.de>; Tue, 27 Aug 2019 15:25:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 50B761514;
	Tue, 27 Aug 2019 13:24:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2ACD150D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 13:24:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DEC5A8A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 13:24:51 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id d23so16969793qko.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 06:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oefLgTysRRmj+C3SxaKiR6NdQXOyE4Aica9KPynHlg4=;
	b=DTU9kOv5U2F6bY7ReQsw+UccvoPz4sjR9YPT5XRm0rWYJT7Qu+zyEw/uHml4L+xz6y
	InBAbzGYWVzbK3DSL4nAzQFO4tCByQ7ywn3//r3odZSBUni0gMCP9ofVsSsfuhmbvCT6
	it1lxJQDXyUakccIw601ZxduKgYRIpepBLRMdr+y5UB4PPmde+sIKzk40XHIdx8pKlYS
	MWf2cCeJWoeVeadRB4jQZPGNRO1OknvfWcgR0hbr0Mo+Sr9R6pX8ct8SweOfQcgV17Gf
	O8AZM/A/q4+HxFUvnTNzGUyTZ190mnT55EkE2sHZzUx7wEpsnsyZdiZE/t24JuvB15Te
	o/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oefLgTysRRmj+C3SxaKiR6NdQXOyE4Aica9KPynHlg4=;
	b=iZs1xii2yyBExWqW/WMihp1NsNGnBWWnK+O4C22pNT0umb/G7G/0KqvCtzrbqkrDYd
	9t2WaKKzmJb5lOu9CCtjOl1YldRi4baL1naI0fAU1eqDtCd36FRX5j+bMjCXZ0jZMXrA
	UVf8hisuyp5s4D082WkefRlLWmieF1I/aNNbfvuIyqI+wbSiiOpQ+O0LkYYI9FQKGBqK
	lhSAjlJxGa0tfJeBtNmKlOVWPpWHpfSDVJTwP2b6XPZR8Jf2QpcCFYX8vlyimSwDh1X3
	RVHOEUz5+maorXHtLlISYmtIWZJxbYFFsPQ8H1xOQK0aQ0tBYm6PS/Go6qKadoBttmEk
	OUlQ==
X-Gm-Message-State: APjAAAUf8CJslAw4AoRDU6UeOAyEPBI9vHA3Gp0YJuppg9pU4m3XNarA
	UkTBlLsKf0vQ5zHbbO1UUTt09nUs3botmjhoaYcCvg==
X-Google-Smtp-Source: APXvYqysMgwbC11WuECjVFH/6puYvPqa8RgZwXOU7zaUc4S53uXeDkdIp5DtGez5rqjp9LDPtA7j91KaW58u7WqFr/k=
X-Received: by 2002:ae9:e8d3:: with SMTP id
	a202mr20827710qkg.256.1566912290545; 
	Tue, 27 Aug 2019 06:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
Date: Tue, 27 Aug 2019 06:24:36 -0700
Message-ID: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
X-Spam-Status: No, score=-9.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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
From: Dmitry Vyukov via Ksummit-discuss
	<ksummit-discuss@lists.linuxfoundation.org>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Mon, Aug 26, 2019 at 11:06 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
> > A somewhat related point re UUID/Change-ID.
> > For syzbot (or any other bug tracking system) we want to associate
> > bugs with fixes. It turned out there is no good identity of a change
> > that we could use. Commit hash is an obvious first thing to consider,
> > but (1) it changes in linux-next, (2) sometimes the change is not
> > committed yet when we do the association, (3) it is different when
> > backported to LTS (so not possible to say if a fix is in that stable
> > tree or not).
> > We decided to use commit subject, which works to some degree, but also
> > has problems: (1) not necessary unique, (2) sometimes people change
> > subject during backporting (e.g. prepend some prefix), (3) has all the
> > same problems of email clients messing with text (e.g. I can't issue
> > #syz fix command for loo long commit subjects with my email client).
> > Some real UUID/Change-ID would solve all of these problems by giving
> > us capability to refer to changes rather than a commit in a particular
> > tree only.
>
> If we adopt the Link: ..../$MSG tag widely then you have a UUID.

Is there a way to ensure that everybody will generate right IDs
(ChangeID-Version) and then a link in canonical form will be included
into commit? As far as I understand this is not possible with the
current kernel tooling, as this aspect is not under control of any
unified tooling.
I see different maintainers use links to different archive web sites.
Also sometimes Link is present for other reasons (e.g. link to bug
report).
The link will need to be added by every developer (rather than
maintainer) so that it's available before the change is committed
anywhere.
Though, most of these are problems for any other change identification scheme...
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
