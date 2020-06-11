Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD051F6372
	for <lists@lfdr.de>; Thu, 11 Jun 2020 10:21:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E2C248794F;
	Thu, 11 Jun 2020 08:21:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G56bjzpZO-KP; Thu, 11 Jun 2020 08:21:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B74AB87949;
	Thu, 11 Jun 2020 08:21:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9955CC0893;
	Thu, 11 Jun 2020 08:21:39 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6287C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 08:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7357220335
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 08:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lOavlDPsV1u9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 08:21:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3CC961FF59
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 08:21:36 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id t6so3911302otk.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 11 Jun 2020 01:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jhw0d3JB3Pvnx2eaaTNsF9w1mVYxFcu51roB8Fb+A2Q=;
 b=KjbcT1LVgkl5KJnxkjvOwfBvO7FToxKLrHamW/x3tVP3lMqbEa8SW++Cz57gzrU3ML
 pZSe7ym10GHVU2u2EsjpWW6HFhyYWv3VL+BfzwFND4dseZqhbZIzq9SajRXDgvnc9cpy
 T6U9v6CU8S7tv3Ji7inYSEjzwYUWNCiQFOY7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jhw0d3JB3Pvnx2eaaTNsF9w1mVYxFcu51roB8Fb+A2Q=;
 b=Tg7k4K84jaGeHgdOL3oXLbkH5W4Ic9bo6MajnZoKyZ9nPGE8NSvbXVKitsjaSKkKF6
 KwtTGh4QrUI5dd1BE76UmdjqTgkPxAOzrnzoenTLT8/P/q7KTB+rFB6upFVjehRIGC3V
 NXHcKDBK0rTFOcAWo5iQatlFHvJFd6spskq9SegFkAL2XIpf4yZa5XZ6Ut1m1wU8Wi4Z
 c3QcLavogumX0ZafyQCKdBm79AI81KmSI/2fDQzwskk6AAs6ovtzIAflxqPLwouzCSK0
 Dy6Tb0+foBZnuIpDorNNKTNUXKZm+OyR52m82fpiYrbBy8iq/HxWHowYuL5pX8zlQB16
 9zHA==
X-Gm-Message-State: AOAM530qfZqSxrxFHr2gfPLqNRXQ6tN83judCtK776xzlLBcRAbNmTbC
 i7l+R3THvd2wlROnyTzYLFTpXigQVU+NTU7YbgKL+w==
X-Google-Smtp-Source: ABdhPJzDl3yl6G8x26StsgmuyjR2FkgUHD8BCZXfNsk1WH5LvlyQGJrLNPRzWDaDUelOvgxdeqLz1AuxNSRPbKF0v5w=
X-Received: by 2002:a05:6830:150d:: with SMTP id
 k13mr5537688otp.303.1591863695284; 
 Thu, 11 Jun 2020 01:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200609145353.628a342d@lwn.net> <20200610084906.GA4151@kadam>
In-Reply-To: <20200610084906.GA4151@kadam>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 11 Jun 2020 10:21:24 +0200
Message-ID: <CAKMK7uEpGUnZ6v-z3tThxcwNDfj_MyxQq8d-1_pzSqxrBrssAw@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

On Wed, Jun 10, 2020 at 10:51 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Jun 09, 2020 at 02:53:53PM -0600, Jonathan Corbet wrote:
> > The long process of converting the kernel's documentation into RST is
> > finally coming to an end...what has that bought us?  We have gone from a
> > chaotic pile of incomplete, crufty, and un-integrated docs to a slightly
> > better organized pile of incomplete, crufty, slightly better integrated
> > docs.  Plus we have the infrastructure to make something better from here.
> >
> > What are the next steps for kernel documentation?  What would we really
> > like our docs to look like, and how might we find the resources to get
> > them to that point?  What sorts of improvements to the build
> > infrastructure would be useful?  I'll come with some ideas (some of which
> > you've certainly heard before) but will be more interested in listening.
>
> The truth is that I only ever read the documentation in front of the
> function implementations.  And LDD.  ;)
>
> There are some subsystems which document their functions in the
> Documentation directory.  For example, pm_request_resume() is documented
> in Documentation/power/runtime_pm.rst where it describes why it might
> return 1 on success.  It would be awesome if we had an automated way to
> find this.

My recommendation is to move these into the code, as kerneldoc. And
then pull it into the .rst using one of the kerneldoc include
directives.

Large chunks of Documentation/gpu/*.rst files are just scaffolding to
pull the comments out of source files. The only thing we have in .rst
files is the big picture overview stuff - even local overview stuff is
simply done as DOC: kerneldoc comments in source code.
-Daniel


>
> I wish that there were a replacement for cscope which showed results in
> a sorted order:
>
> Global Implementation
> Documentation
> Local Implemenatations
> (For me the struct device is my 995th result...  Cscope is terrible.
> But it's what I use as my default search in the kernel source.  I just
> would like to have one search for everything that would find
> documentation as well).
>
> regards,
> dan carpenter
>
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
