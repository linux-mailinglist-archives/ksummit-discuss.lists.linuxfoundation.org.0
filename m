Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D3354F69B
	for <lists@lfdr.de>; Fri, 17 Jun 2022 13:25:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA415612DD;
	Fri, 17 Jun 2022 11:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA415612DD
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=Z2YeWUHa
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h1XJYAIKuKix; Fri, 17 Jun 2022 11:25:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A08B8612DF;
	Fri, 17 Jun 2022 11:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A08B8612DF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 36659C002D;
	Fri, 17 Jun 2022 11:25:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C36D8C002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F05142414
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:25:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F05142414
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Z2YeWUHa
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_wM3h41lz0I
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E28D34240D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E28D34240D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655465118;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ABPOg8K6d+Hq6GUsxhhBLzaCbdauRFBFvmrg/lug9+s=;
 b=Z2YeWUHaEOmCXNLzDfn0R/kK6jeK3aSKOrEvRx9NGi+aBUWrqXlocNpBdsm+hwUuYigHvN
 Cs1hbBr9+2zcjE3R+T/mhr2TLwE0SS+obipbvZ/2jBXD3wjaiE308LN05NvSCam7nSHDyQ
 /hk1hRMu/8PTFIymHEQLr56lfptdBMg=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-60-L1YM70JyPWODUBspm45CCg-1; Fri, 17 Jun 2022 07:25:17 -0400
X-MC-Unique: L1YM70JyPWODUBspm45CCg-1
Received: by mail-pf1-f200.google.com with SMTP id
 d129-20020a621d87000000b005228d4cbcc4so1936468pfd.12
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 04:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ABPOg8K6d+Hq6GUsxhhBLzaCbdauRFBFvmrg/lug9+s=;
 b=WMeBtxZBifqBoOZ1Uegw03cIXnOnYA160G/WmB4EwOFOPCOc478xKd6QTNXPCSS3T3
 h6MDC/K/OKacs8VnikNga/DJwBXDJ9TCuVeVKvAvof5OQ2fHihmC/zEI3rqSfvtBn46u
 +lGe3w2onH5MUkAIRc99dTDMxO+m2V7SfUdiJ07QgztjRKr8KDBLpv0mBgQSW7zeW8Gz
 l99Z3itZKlzsnfIANKkFGrKXkZEoHQeK6fV1nD6oTA6OGIm5aDazGE7p2nCnOkRb9lNn
 4h2xwDCAu6vEN9u3q3t/IwyxNk4xZA02KwHanIXtLNAJFXFJvTpImXJg68zRUNJOUQhW
 00ZA==
X-Gm-Message-State: AJIora85/r/E1N+0rNdqI7SN935tj+0GSqWK2RvoPa07jiD3Wkbm7mrW
 VLSK1WcGXoeYrfKoz/FuCdCqX3K3NusXki2LnyrZSq6RFaoaEj7zIAeP9Mg7bfVGSr6mXNFd2bS
 yGrcvy7TPFpUgB/Az5b27rYiMpuO8NM2LJyTJDN6/JkkWx4TZcKv1XmXxfw==
X-Received: by 2002:a17:902:6946:b0:167:8ff3:1608 with SMTP id
 k6-20020a170902694600b001678ff31608mr9280021plt.116.1655465116248; 
 Fri, 17 Jun 2022 04:25:16 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tRg4vXQ8y82hM0SoYDnkZqBAsSfDMRsAlHvKyCi4spWW7nnRbLTdihtE5slUNcFalPESmqVLKAiLt2gB2Ns/w=
X-Received: by 2002:a17:902:6946:b0:167:8ff3:1608 with SMTP id
 k6-20020a170902694600b001678ff31608mr9279985plt.116.1655465115805; Fri, 17
 Jun 2022 04:25:15 -0700 (PDT)
MIME-Version: 1.0
References: <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
 <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
 <20220616122634.6e11e58c@gandalf.local.home>
 <bbb46f66bb8518e90030fe97a1225adf178654d1.camel@HansenPartnership.com>
 <20220616125128.68151432@gandalf.local.home>
 <a522bfa4241eb263e354ebbb293b0d629dd2e026.camel@HansenPartnership.com>
 <nycvar.YFH.7.76.2206170947520.14340@cbobk.fhfr.pm>
 <20220617103050.2almimus5hjcifxl@quack3.lan>
 <CAO-hwJJxCteD_BHZTeqQ1f7gWOHoj+05qP8bmFsRYVfMc_3FxQ@mail.gmail.com>
 <dc6ca88d-d1ef-a1ab-dbef-e9338467271d@redhat.com>
In-Reply-To: <dc6ca88d-d1ef-a1ab-dbef-e9338467271d@redhat.com>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Date: Fri, 17 Jun 2022 13:25:04 +0200
Message-ID: <CAO-hwJ+DJGYzKeGd8q7ma3L_qfd=phxczyfPqPnoz-DV9By_Cg@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>,
 ksummit-discuss@lists.linuxfoundation.org
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=btissoir@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
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

On Fri, Jun 17, 2022 at 1:16 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi Benjamin,
>
> Deliberate offlist reply.

[re-adding the list as your last comment]

>
> On 6/17/22 13:04, Benjamin Tissoires wrote:
> > On Fri, Jun 17, 2022 at 12:31 PM Jan Kara <jack@suse.cz> wrote:
> >>
> >> On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
> >>> On Thu, 16 Jun 2022, James Bottomley wrote:
> >>>
> >>>>> If you want a "stable ebpf program" then you submit it upstream and
> >>>>> we can make sure that it works with any internal API changes, the
> >>>>> same way we do for modules. Those with out-of-tree modules will have
> >>>>> the technical debt of changing every time a new kernel release is
> >>>>> out, and so should out-of-tree bpf programs.
> >>>>
> >>>> Assuming eBPF takes off, that would have some poor maintainer managing
> >>>> the whole of the compatibility changes for the entire eBPF ecosystem
> >>>> ... I really don't think that's scalable.
> >>>
> >>> I nevertheless still see this as the best and only option we have; that
> >>> is, have an infrastructure in the kernel tree for maintaining eBPF
> >>> programs, somehow sorted per subsystem so that it mirrors the standard
> >>> maintainership / subsystem structure proper, and have the maintainers
> >>> responsible for keeping the eBPF programs related to their subsystem in
> >>> sync with the internal changes happening in the subsystem.
> >>>
> >>> At the end of the day, it will be the subsystem maintainers themsleves
> >>> accepting the program into the tree in the first place, so it's not like
> >>> they are receiving responsibility for something they never wanted in the
> >>> first place. So we'll probably end up with subsystems with many eBPF
> >>> programs, and also subsystems with zero. Similarly to tracepoints.
> >>>
> >>> I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can
> >>> hook to just about anything).
> >>>
> >>> Any other option seems to lead to having eBPF programs sprinkled all over
> >>> the internet that depend on particular kernel version / API, leading to
> >>> nothing else than unhappy users, because "I downloaded it, it didn't work,
> >>> Linux sucks".
> >>
> >> OK, but if we keep eBPF programs this closely coupled to the kernel, then
> >> what is the advantage of using eBPF, say for HID as was discussed earlier
> >> in this thread, compared to just making sure HID has appropriate hooks and
> >> the handling of the device quirks is done in normal C code (kernel module)
> >> attached to these hooks?
> >
> > [sorry some of my messages are kept in the moderation queue]
> >
> > This is something I tried to explain in my talk at Kernel Recipes 2
> > weeks ago [1].
> >
> > Basically, for regular users, it will be simpler for them to test patches:
> > A developer patches the device through a bpf program, compiles it and
> > sends to the user the source and the bytecode. The user just has to
> > drop the bytecode in the file system and a udev rule automatically
> > loads it without having to reboot the current kernel, making testing
> > way faster and simpler for users.
> >
> > Then developers take the burden of upstreaming the bpf program through
> > the usual email submission.
> >
> > This way users are testing the actual code that is upstreamed without
> > too much hurdle.
> >
> > IMO those kinds of fixes should be in-tree because they are actual fixes.
> >
> >
> >>
> >> Because frankly for me the main value of eBPF over patching and recompiling
> >> the kernel is that I can tweak the eBPF code exactly to my needs and load
> >> it to the kernel without needing to reboot, over time it is less work than
> >> maintaining a source code patch out of tree, and usually it is a hacky
> >> tweak I use for some debugging so merging it upstream does not make sense.
> >>
> >
> > And that's also why I want to give *some* guarantees that the eBPF
> > hooks I am putting in HID are somewhat stable. Or at least I won't
> > break everything at each release and look carefully when there is a
> > change in the API.
> >
> > But these guarantees are just *my* constraints I put on *my*
> > subsystem. I have reasons to believe I can ensure that, so I will.
> >
> > But I am not saying any internal HID function will have ABI
> > guarantees. Only the few hooks I am explicitly documenting as such.
> >
> > So the idea is that your debugging program can live in your own tree,
> > without being submitted, but this is just a contract between myself as
> > a subsystem maintainer and you, not the entire eBPF or ftrace
> > community.
> >
> > I made this so I can put any fancy new kernel API out in eBPF
> > programs, that would be handled by the actual user of that kernel API.
>
> I think you need to clarify this, to me it now reads that you want
> to use eBPF to implement new APIs, where as what you mean is that
> you want to avoid the need to add new APIs like e.g. sysfs knobs
> or kernel-module-parameters, right ?

Yes. Exactly. It's not about regular and standard API. It's a device
specific property/feature that is usually handled through module
parameters or custom sysfs entries that have only one single user.

>
> > If a user wants to set some fancy feature on a particular device,
> > instead of having a kernel parameter that no one will ever use besides
> > that program that may be short-lived, we can then load that
> > functionality with the eBPF program.
>
> I think you need to clarify here that you mean changing some settings
> on the device through e.g. a HID feature report which would require
> a sysfs-attribute or kernel-module-parameters without ePBF and you want
> to avoid adding more and more sysfs-attributes / kernel-module-parameters?

Yep yep :)

>
> At least I think this is what you are trying to say, and I think that
> without some clarification this is not what most kernel-devs will
> understand here.

Thanks for saying it better than I do :)

>
> Feel free to copy/paste from this reply to use my attemps at clarifying
> things, or just reply to this with the list added back to the Cc :)

And done through the lazy option, just forward to the list :)

Cheers,
Benjamin

>
> Regards,
>
> Hans
>
>
>
> > Or if a user is only interested in a particular event in a report for
> > a device (with the custom protocols some gaming devices are enjoying),
> > then that user can load a BPF program and keep it outside of the tree
> > because the program doesn't make sense without the userspace
> > component.
> >
> > I hope it clarifies a little bit now. For HID at least.
> >
> > Cheers,
> > Benjamin
> >
> > [1] https://kernel-recipes.org/en/2022/talks/hid-bpf/ and
> > https://www.youtube.com/watch?v=nhJqaZT94z0&t=14923s
> >
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> >
>

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
