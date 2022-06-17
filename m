Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D754F6BE
	for <lists@lfdr.de>; Fri, 17 Jun 2022 13:33:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BFC5D42432;
	Fri, 17 Jun 2022 11:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFC5D42432
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=GAGdX05r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rpo-9QvnBt-F; Fri, 17 Jun 2022 11:32:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EB5EA42430;
	Fri, 17 Jun 2022 11:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB5EA42430
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8378AC002D;
	Fri, 17 Jun 2022 11:32:52 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F3B3FC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B892560B11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B892560B11
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GAGdX05r
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lNq5AXu9-6vR
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:32:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B61DE60ACF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B61DE60ACF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 11:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655465568;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ha6q6qH7A3GhaLC8AVmVVsHwElGtqETNXOtHwciJ80Q=;
 b=GAGdX05r4WbkEdZw3BouIKFNFFCmPLP7wChUfbXGCbAOjFMH24m4BlsYs5WGUn3LTZv1iL
 eKbJH/ZX3+rgl0EbD5BqgQ6ja/yUXcj8rEsmGbSuty+MpjBFqR80l6xPMoOl1dQsBphFS4
 vXWIFudoWXVx6cmQW4/5j8Wr5BaBCsE=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-364-YaQqtlNeMl-MSa72yu18Jg-1; Fri, 17 Jun 2022 07:32:44 -0400
X-MC-Unique: YaQqtlNeMl-MSa72yu18Jg-1
Received: by mail-ed1-f72.google.com with SMTP id
 o2-20020a056402438200b00434ec3efc03so3125912edc.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 17 Jun 2022 04:32:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Ha6q6qH7A3GhaLC8AVmVVsHwElGtqETNXOtHwciJ80Q=;
 b=yi5w0VwEQGe2JQ2fnc8MCsr5N8Yl8cCZPnFEcr5ug3uGkvaAG+/nNqUhJVQUw5oNtm
 n8SGYBUZmv/ohAuLTSxcTbFHMJezQyEDNeVsS1UNqE7kVH2f7IbW3llxvrxuB0TWXX/J
 yJm1lbg9zCjhU75fasVdtwk3wUWzdikrycCAq3/8WAi2XAuc7eXaDqtFqzSHStTMkIsc
 MB7PthliJoJmFAwlLyDUEZiVQEM/SXLhS/zMdU5A99pMXKsbRwakUbV1+BNdASiXJax9
 RcyNrgdzj4fzL2G9ooh4LhFtzInTspu8vuCdg0Cd2d0qLeFCviz+7yqtV/R81eDKY/3/
 yCXQ==
X-Gm-Message-State: AJIora/Ry1KNkk+5dPlYwsXqhvE5oIfPVnuybSTQUDi7s3Zi8qoCOxiv
 ubcnq1cfSvKGxfb48cHNgguoxRTZxjs/4nXgLrug57xL+mrvPRo9j5dTTk6d0/duSRxg3vW/nb7
 4jyuw4FQlSceUePOcJr0J/75O+V2ufkrlBna4o3+5oA==
X-Received: by 2002:a17:906:d145:b0:717:6264:deb2 with SMTP id
 br5-20020a170906d14500b007176264deb2mr8491941ejb.527.1655465563318; 
 Fri, 17 Jun 2022 04:32:43 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1v628/qN4qeVO5cOhuuVl4I3GGUuwLax0K/wmJ/rxPtVr/aSnXVzgk6mn4jcvurO+1Jdafefw==
X-Received: by 2002:a17:906:d145:b0:717:6264:deb2 with SMTP id
 br5-20020a170906d14500b007176264deb2mr8491921ejb.527.1655465563007; 
 Fri, 17 Jun 2022 04:32:43 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 o18-20020a056402439200b0042fbc23bfcesm3766261edc.46.2022.06.17.04.32.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Jun 2022 04:32:42 -0700 (PDT)
Message-ID: <983e1c60-49f3-7e7c-c6a7-d9e1d2b3d9b5@redhat.com>
Date: Fri, 17 Jun 2022 13:32:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 ksummit-discuss@lists.linuxfoundation.org
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
 <CAO-hwJ+DJGYzKeGd8q7ma3L_qfd=phxczyfPqPnoz-DV9By_Cg@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAO-hwJ+DJGYzKeGd8q7ma3L_qfd=phxczyfPqPnoz-DV9By_Cg@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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

Hi,

On 6/17/22 13:25, Benjamin Tissoires wrote:
> On Fri, Jun 17, 2022 at 1:16 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi Benjamin,
>>
>> Deliberate offlist reply.
> 
> [re-adding the list as your last comment]
> 
>>
>> On 6/17/22 13:04, Benjamin Tissoires wrote:
>>> On Fri, Jun 17, 2022 at 12:31 PM Jan Kara <jack@suse.cz> wrote:
>>>>
>>>> On Fri 17-06-22 09:53:52, Jiri Kosina wrote:
>>>>> On Thu, 16 Jun 2022, James Bottomley wrote:
>>>>>
>>>>>>> If you want a "stable ebpf program" then you submit it upstream and
>>>>>>> we can make sure that it works with any internal API changes, the
>>>>>>> same way we do for modules. Those with out-of-tree modules will have
>>>>>>> the technical debt of changing every time a new kernel release is
>>>>>>> out, and so should out-of-tree bpf programs.
>>>>>>
>>>>>> Assuming eBPF takes off, that would have some poor maintainer managing
>>>>>> the whole of the compatibility changes for the entire eBPF ecosystem
>>>>>> ... I really don't think that's scalable.
>>>>>
>>>>> I nevertheless still see this as the best and only option we have; that
>>>>> is, have an infrastructure in the kernel tree for maintaining eBPF
>>>>> programs, somehow sorted per subsystem so that it mirrors the standard
>>>>> maintainership / subsystem structure proper, and have the maintainers
>>>>> responsible for keeping the eBPF programs related to their subsystem in
>>>>> sync with the internal changes happening in the subsystem.
>>>>>
>>>>> At the end of the day, it will be the subsystem maintainers themsleves
>>>>> accepting the program into the tree in the first place, so it's not like
>>>>> they are receiving responsibility for something they never wanted in the
>>>>> first place. So we'll probably end up with subsystems with many eBPF
>>>>> programs, and also subsystems with zero. Similarly to tracepoints.
>>>>>
>>>>> I.e. pretty much the 'perf' model, but on much wider scale (as eBPF can
>>>>> hook to just about anything).
>>>>>
>>>>> Any other option seems to lead to having eBPF programs sprinkled all over
>>>>> the internet that depend on particular kernel version / API, leading to
>>>>> nothing else than unhappy users, because "I downloaded it, it didn't work,
>>>>> Linux sucks".
>>>>
>>>> OK, but if we keep eBPF programs this closely coupled to the kernel, then
>>>> what is the advantage of using eBPF, say for HID as was discussed earlier
>>>> in this thread, compared to just making sure HID has appropriate hooks and
>>>> the handling of the device quirks is done in normal C code (kernel module)
>>>> attached to these hooks?
>>>
>>> [sorry some of my messages are kept in the moderation queue]
>>>
>>> This is something I tried to explain in my talk at Kernel Recipes 2
>>> weeks ago [1].
>>>
>>> Basically, for regular users, it will be simpler for them to test patches:
>>> A developer patches the device through a bpf program, compiles it and
>>> sends to the user the source and the bytecode. The user just has to
>>> drop the bytecode in the file system and a udev rule automatically
>>> loads it without having to reboot the current kernel, making testing
>>> way faster and simpler for users.
>>>
>>> Then developers take the burden of upstreaming the bpf program through
>>> the usual email submission.
>>>
>>> This way users are testing the actual code that is upstreamed without
>>> too much hurdle.
>>>
>>> IMO those kinds of fixes should be in-tree because they are actual fixes.
>>>
>>>
>>>>
>>>> Because frankly for me the main value of eBPF over patching and recompiling
>>>> the kernel is that I can tweak the eBPF code exactly to my needs and load
>>>> it to the kernel without needing to reboot, over time it is less work than
>>>> maintaining a source code patch out of tree, and usually it is a hacky
>>>> tweak I use for some debugging so merging it upstream does not make sense.
>>>>
>>>
>>> And that's also why I want to give *some* guarantees that the eBPF
>>> hooks I am putting in HID are somewhat stable. Or at least I won't
>>> break everything at each release and look carefully when there is a
>>> change in the API.
>>>
>>> But these guarantees are just *my* constraints I put on *my*
>>> subsystem. I have reasons to believe I can ensure that, so I will.
>>>
>>> But I am not saying any internal HID function will have ABI
>>> guarantees. Only the few hooks I am explicitly documenting as such.
>>>
>>> So the idea is that your debugging program can live in your own tree,
>>> without being submitted, but this is just a contract between myself as
>>> a subsystem maintainer and you, not the entire eBPF or ftrace
>>> community.
>>>
>>> I made this so I can put any fancy new kernel API out in eBPF
>>> programs, that would be handled by the actual user of that kernel API.
>>
>> I think you need to clarify this, to me it now reads that you want
>> to use eBPF to implement new APIs, where as what you mean is that
>> you want to avoid the need to add new APIs like e.g. sysfs knobs
>> or kernel-module-parameters, right ?
> 
> Yes. Exactly. It's not about regular and standard API. It's a device
> specific property/feature that is usually handled through module
> parameters or custom sysfs entries that have only one single user.
> 
>>
>>> If a user wants to set some fancy feature on a particular device,
>>> instead of having a kernel parameter that no one will ever use besides
>>> that program that may be short-lived, we can then load that
>>> functionality with the eBPF program.
>>
>> I think you need to clarify here that you mean changing some settings
>> on the device through e.g. a HID feature report which would require
>> a sysfs-attribute or kernel-module-parameters without ePBF and you want
>> to avoid adding more and more sysfs-attributes / kernel-module-parameters?
> 
> Yep yep :)
> 
>>
>> At least I think this is what you are trying to say, and I think that
>> without some clarification this is not what most kernel-devs will
>> understand here.
> 
> Thanks for saying it better than I do :)

You're welcome. Actually thinking more about this I think this
is somewhat akin to Windows HID filter drivers and given BPF-s
history in packet-filtering I think that that actually is a helpful
analogy to make.

Regards,

Hans

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
