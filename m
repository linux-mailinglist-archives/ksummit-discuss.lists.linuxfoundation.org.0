Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C369B5D9
	for <lists@lfdr.de>; Fri, 23 Aug 2019 19:51:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 09E63E98;
	Fri, 23 Aug 2019 17:50:49 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C3E0E38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 17:50:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBA2767F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 17:50:45 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id o9so21994497iom.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 10:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Hz0HmJd9zTkV3Cp6mGzqHF57ZxWCquaWe4tLFPZjDyM=;
	b=Joh/9oZzMu1jCv4S3xHtu7TFjIxb8/hd5NXpc2DdK9hVoNRJ4sNREIoApGkJNalSXq
	TZ5O2A5mCfp8UlYytisgXGkDhJR4BBXcmmadUW35aWXnzu3dKT5jbRPA8vmiu4KyBzf4
	eSau+inhlEaeQSP8uLXGlDVsoz1UxxuWYh8ZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Hz0HmJd9zTkV3Cp6mGzqHF57ZxWCquaWe4tLFPZjDyM=;
	b=nbVgcK7/D/UktDCcWR5RvadxcVYqPzmFrgHeP2AvicSXTRtKNvPI6Kq75SlVoAXip1
	2Kwz1JLVR+vtOzvuqxG3ieStZUqik3x8LpiB2n5YCt4FTECwiPxN/JW0VCpnT3ClTM+s
	SGNee/5TZl+pptESrbRB/RibwwQnWenyWCPto7/Vq549gmUFepIi4mLA6SPHnD3OLCjX
	ONb6r1DoAnOV5gyBIXzQ/73lOeaLLvjoyjqukAgYM2QUVEoCqLtNSNEpVvp0q8d6OsFD
	zVCYWdXdxr6C4vgoXaIpnVxyFWA1z4Dzg6Rbr7iVDK5RMAyg6TOYiOfODyovyFMhkzEd
	r2mA==
X-Gm-Message-State: APjAAAU9soia8GfwVo4hHMd1c+Bg6h0m6tbZdg6ODXLXwenZGyvdzvL7
	tHUIA0TtP0ZYVgdvIAFWS/Wz0Xaw5YY=
X-Google-Smtp-Source: APXvYqx1hJ6vWidYDzdwXi09Fkx8ag0TmySZLATzqxg27Ofo+kjnv4TtDOenFsvtd0ya/SuZs+2OOA==
X-Received: by 2002:a6b:bf87:: with SMTP id p129mr7421147iof.253.1566582644892;
	Fri, 23 Aug 2019 10:50:44 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com.
	[209.85.166.48]) by smtp.gmail.com with ESMTPSA id
	h18sm2847177iob.80.2019.08.23.10.50.42
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 10:50:42 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id t3so21890640ioj.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 10:50:42 -0700 (PDT)
X-Received: by 2002:a5e:d717:: with SMTP id v23mr8272598iom.52.1566582642259; 
	Fri, 23 Aug 2019 10:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<CAD=FV=VcvTTO9k4idg9mA4HxKy-3zm47vvqHvS86yJW8G8cRRg@mail.gmail.com>
	<alpine.DEB.2.21.1908231751490.1896@nanos.tec.linutronix.de>
	<alpine.DEB.2.21.1908231758320.1896@nanos.tec.linutronix.de>
	<CAD=FV=WwghONxW_OzMoJ1-n7Fd4uyt=VPngOqv0NjNMkgd6Rhg@mail.gmail.com>
	<20190823165018.GB19727@lunn.ch>
In-Reply-To: <20190823165018.GB19727@lunn.ch>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 23 Aug 2019 10:50:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VUm+6G9HFX0E_e=fnun+xs=a-M48krRWUdOgi6JzQY0Q@mail.gmail.com>
Message-ID: <CAD=FV=VUm+6G9HFX0E_e=fnun+xs=a-M48krRWUdOgi6JzQY0Q@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi,

On Fri, Aug 23, 2019 at 9:50 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > 1. Make it allowed or suggested to put a well-formed (machine
> > parseable) Change-Id "after the cut" on mailing list posts, which
> > would allow you to associate v1, v2, and v3.
> >
> > 2. Add "Link://lkml.kernel.org/r/$MSGID_PER_PATCH" to landed patches,
> > which would allow you to recover the Change-Id even after a patch
> > lands.
> >
> > ...then I will be happy (ish).  The biggest downside I see here is
> > that it is much less likely that random committers out there will get
> > this right.  The way committers naturally have the same Change-Id from
> > v1 to v2 to v3 is because it's part of the commit message and when you
> > amend to a previous change it stays there.  That means that these
> > people will need to remember to move the Change-Id to "after the cut"
> > unless we teach git-send-email to do this for you (though I guess
> > maybe we could do that?).
>
> To make this reliable, we really need git to be doing the work. We
> should also think about the typical developer workflow.
>
> To create a v1 of a patch, i do a git commit. To make a v2, i'm likely
> to be using git rebase -i; git commit --am.
>
> So why not have the initial git commit allocate the UUID. git commit
> --am leaves the UUID alone. git-format-patch can then put the UUID
> after the ---. Can git-send-email generate the MSGID from the UUID?

Yes, if we can't agree to have Change-Id part of the commit that lands
as part of the kernel, then trying to get some smarts into
git-send-email and git-format-patch would definitely be the way to go.

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
