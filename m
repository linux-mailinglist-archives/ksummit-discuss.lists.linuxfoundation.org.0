Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7090E216B79
	for <lists@lfdr.de>; Tue,  7 Jul 2020 13:28:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2938289A24;
	Tue,  7 Jul 2020 11:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RHZIjg3GxAtW; Tue,  7 Jul 2020 11:28:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBF0289A2B;
	Tue,  7 Jul 2020 11:28:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 78197C016F;
	Tue,  7 Jul 2020 11:28:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7FA07C016F;
 Tue,  7 Jul 2020 11:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6ADD5899D8;
 Tue,  7 Jul 2020 11:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPM8CVaG74gy; Tue,  7 Jul 2020 11:28:22 +0000 (UTC)
X-Greylist: delayed 03:59:36 by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2052.outbound.protection.outlook.com [40.107.223.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E318689973;
 Tue,  7 Jul 2020 11:28:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W63jdAroosjWIXatF7k8pysKPwjZG9685KHAyj19f1+1HKgtLD9DXwIwcnZnDw3PpakpE9bwIVS2Ortkqwjn+twaOHvRRHc1DazdSqvc78TLrhWNPGT3HaOZvBbory/I9Rw2VmaUhycyLQyW9z+xnDTboWv8GkBOx+dSSfWlxd2hvQBP4wS1IVpNW5r+SEu8Fcv5wCwJAgXb/P+Ea4THYwWfQnWYz6FpN4EThLL5z7RxEFeKGADJK/lorJMhNp053Qno9vRCogDXwzbYEJOwLquzohxInFiouIlTEVuLgaZHYsT0Nv4Evyudj8g3/M8i3220NrPMIPgY0gXX6OGBhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8J4jKPfdBgumrz2lYa9vQnsFXVuXz7mgTUHieXh7VQU=;
 b=JnxwjFBVLF+uRjHK83iUWcUlxklOYxs+b/XLptbc9kXPE8Hhf05k2vDyxoa090kUfpTMMgXmm8eSPEG0uhaynidxrJDEp2/WIZd/I8ZlNi/llziDuiqjovtnxJuKHd/7twUvZs5PyB8fDB+IkUiTbQIv2sC6NmTmSVHmC0DCCGTtHZOpdPT7blqdwlJe3IeRmnRSuZgSZYvYlAc07QKazFNQ7A9hKWWgqzNfERtyJd65KaON+kFNvTb0S0mFX189kIw2Idb7Sty562tk4u/F+vA37BHTxS1TIy/AUz3Idw2rErI0RdahdxLai2ErZKqVSW5S/OqhaaWPXhtRVJ4K+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=netapp.com; dmarc=pass action=none header.from=netapp.com;
 dkim=pass header.d=netapp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netapp.onmicrosoft.com; s=selector1-netapp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8J4jKPfdBgumrz2lYa9vQnsFXVuXz7mgTUHieXh7VQU=;
 b=l+wyqmZ6hA9Ag0GIOdNlo0UjhI+MS/E2zzpdU/mJkkx3XOVPuJFz9opSIIoHe0Gdzj882euMa112OSKQR9DwCISEj2jCr1+oJ9PXy709BqRis6cWfkaA05VRKMBhZUi+j6wSsePeo9esqhuWlB9QSnsDGMRp0hJEpb7Fqsf/k4s=
Received: from DM6PR06MB3836.namprd06.prod.outlook.com (2603:10b6:5:85::21) by
 DM6PR06MB5740.namprd06.prod.outlook.com (2603:10b6:5:1a6::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.20; Tue, 7 Jul 2020 06:56:53 +0000
Received: from DM6PR06MB3836.namprd06.prod.outlook.com
 ([fe80::dc64:4c7:1c5b:7e90]) by DM6PR06MB3836.namprd06.prod.outlook.com
 ([fe80::dc64:4c7:1c5b:7e90%6]) with mapi id 15.20.3153.029; Tue, 7 Jul 2020
 06:56:53 +0000
From: "Harrosh, Boaz" <Boaz.Harrosh@netapp.com>
To: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@amacapital.net>
Thread-Topic: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
Thread-Index: AQHWUkBlJd1sexqy50W93WQXawjffKj6wNEAgADhVoCAAAxEiw==
Date: Tue, 7 Jul 2020 06:56:53 +0000
Message-ID: <DM6PR06MB3836FBAD65096AF63ACD3DB3EE660@DM6PR06MB3836.namprd06.prod.outlook.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>,
 <202007062234.A90F922DF@keescook>
In-Reply-To: <202007062234.A90F922DF@keescook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=netapp.com;
x-originating-ip: [2a00:a040:196:431d:6203:64fa:e313:fb47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e8fa0c7-358d-420a-3d0d-08d82242ee58
x-ms-traffictypediagnostic: DM6PR06MB5740:
x-microsoft-antispam-prvs: <DM6PR06MB5740DB7F62008DEF823EB5AFEE660@DM6PR06MB5740.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0457F11EAF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nUQknO2LLvTGT5HDR2LrfVgtotazj/hL84RC4aiESnR02O6r6PRPgJYLQiPyB6cV6dC5Z4CTuxqgU+7DjBXRP49rBcq0n0du56B5l+8S7QtpfiV5dtAt5MgR87+WuJke/L4vV9318ktciU3z/svn24Q5YpJuXjcT7ka91V1I4y6pLjTb3pPudJ+vUfdO0GjcvkTcW1ZL901x5QCOUtZBGJ1V0kZMbAkyp0cnOX4mJt6ISbVbamX8GGFOHzTdOcMK9lUVpDTDCodxz4BQmdji9MwNkTSZvTsB+JdCAlZGzBjXMZqLfbpeugDCWYmc8ioUJJnuKO0UnQh/sepxRKBtEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR06MB3836.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(7696005)(4326008)(9686003)(5660300002)(478600001)(71200400001)(186003)(6506007)(55016002)(52536014)(2906002)(8936002)(8676002)(54906003)(91956017)(86362001)(110136005)(66446008)(64756008)(66476007)(76116006)(316002)(33656002)(66946007)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: GereuADuZgNsVLquMuAZyUnjpI2cOBgVIpplB6hmQIga7L5P4lpoEJ1oGQ8xich+BghQ2EXxuBbdjzVLCWzul6IL5DeBkP/+tssnxikNfPmK2vAbq990UBEYy1np/UF3/xSXwl1yB9jCpdqoh8fNnK3WzyTB3Q5R83zDppb6hMurmIzyUJ8rO/QzCs8g0/WX8ab5i7N6ENM/qPL9M15oW+bHuFO/aC1wINHuSlZni7Zx0L4oazu2aMo7CSiPIUljx1tNG1Fbn4BtDnqNpdXl0eg4oFyolcBT/6mu8vK8vvmQScoxqd6HRZuPW4uQusTrT1R7dc7I2lnUAikSjRJPj4xdVw0DL7FHetIFDgtSdVJ6XfclYnZAAFl5AUh3Pmc2Z++aNjN8nOrkYlO4/LRF+CbLiQHM+T04GTTi/bH+irY+qyLfGLw5SKKkUq8YNMPyVdAOnfy/aGdO9r7/tvqPThHvBMbIRYKvHzdqd5ZIfvAOJ6hGL7cxRBc9Sn9bqB7/PhA62WW0JZOzp6b+ZN8QBm2gIVZcFfiOMmlHCu0VmJ6BXKm6EfA+af1RWtE4kMst
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: netapp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR06MB3836.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e8fa0c7-358d-420a-3d0d-08d82242ee58
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2020 06:56:53.3272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4b0911a0-929b-4715-944b-c03745165b3a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YDGzrmEYiarlYFpye73Y05rK3pi5kONBuYBkh2mobCqJE4Sfn7pz38MjBYFRVoSBrCalvkW4O4a2NEbcsAHPOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB5740
Cc: Chris Mason <clm@fb.clm>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

Kees Cook wrote:
> I have struggled with this as well. The parts of speech change, and my
> grammar senses go weird. whitelist = adjective noun. allow-list = verb
> noun. verbing the adj/noun combo feels okay, but verbing a verb/noun is
> weird.

> And just using "allowed" and "denied" doesn't impart whether it refers
> to a _single_ instance or a _list_ of instances.

> But that's all fine. The change is easy to do and is more descriptive
> even if I can't find terms that don't collide with my internal grammar
> checker. ;)

But why. In English many times a verb when it comes before the noun means an adjective, or an adjective like, describing some traits of the noun.
Example: 
I work - work is a verb here.
I used the work bench. - Work is saying something about the type of bench, an adjective. Same as you would say "I used the green bench".

I am not an English native at all but allow-list sounds totally English to me. (I guess the very correct English way is "allowed-list"  where the past tense may convert the verb to a noun. but allow-list sounds very good to me as well. Say work-list as opposed to vacation-list do you need to say worked-list? I don't think so.)

run mate, running mate. cutting board. these are all examples of verbs used as adjectives. Are they not English? What am I missing I would like to learn?

Thanks
Boaz
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
