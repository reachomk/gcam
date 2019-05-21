.class public final Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;,
        Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    }
.end annotation


# static fields
.field static final IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2342
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    .line 2362
    :goto_0
    return-void

    .line 2343
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2344
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2345
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 2346
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>(B)V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2347
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 2348
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2349
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 2350
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2351
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 2352
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2353
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 2354
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>(B)V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2355
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 2356
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2357
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    .line 2358
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0

    .line 2360
    :cond_8
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2761
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    .line 2762
    return-void
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .prologue
    .line 2814
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4748
    if-eqz v1, :cond_0

    .line 4749
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 4751
    :cond_0
    const/4 v0, 0x0

    .line 2814
    goto :goto_0
.end method


# virtual methods
.method public final addAction(I)V
    .locals 2

    .prologue
    .line 3007
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->addAction(Ljava/lang/Object;I)V

    .line 3008
    return-void
.end method

.method public final addChild(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2929
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    .line 2930
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4405
    if-ne p0, p1, :cond_1

    .line 4422
    :cond_0
    :goto_0
    return v0

    .line 4408
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 4409
    goto :goto_0

    .line 4411
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 4412
    goto :goto_0

    .line 4414
    :cond_3
    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 4415
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 4416
    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 4417
    goto :goto_0

    .line 4419
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 4420
    goto :goto_0
.end method

.method public final getActions()I
    .locals 2

    .prologue
    .line 2992
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getActions(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3183
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3184
    return-void
.end method

.method public final getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3207
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3208
    return-void
.end method

.method public final getClassName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3572
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3620
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 3548
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 4400
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isAccessibilityFocused()Z
    .locals 2

    .prologue
    .line 3352
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 3401
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 2

    .prologue
    .line 3449
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    .line 3279
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isFocusable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocused()Z
    .locals 2

    .prologue
    .line 3303
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isLongClickable()Z
    .locals 2

    .prologue
    .line 3425
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isLongClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 3377
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isVisibleToUser()Z
    .locals 2

    .prologue
    .line 3327
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 2

    .prologue
    .line 3646
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->recycle(Ljava/lang/Object;)V

    .line 3647
    return-void
.end method

.method public final removeAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
    .locals 3

    .prologue
    .line 3040
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setAccessibilityFocused(Z)V
    .locals 2

    .prologue
    .line 3368
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setAccessibilityFocused(Ljava/lang/Object;Z)V

    .line 3369
    return-void
.end method

.method public final setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3198
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3199
    return-void
.end method

.method public final setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 3222
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 3223
    return-void
.end method

.method public final setCheckable(Z)V
    .locals 2

    .prologue
    .line 3246
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setCheckable(Ljava/lang/Object;Z)V

    .line 3247
    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    .prologue
    .line 3270
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setChecked(Ljava/lang/Object;Z)V

    .line 3271
    return-void
.end method

.method public final setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3587
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3588
    return-void
.end method

.method public final setClickable(Z)V
    .locals 2

    .prologue
    .line 3416
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setClickable(Ljava/lang/Object;Z)V

    .line 3417
    return-void
.end method

.method public final setCollectionInfo(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3761
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3762
    return-void
.end method

.method public final setCollectionItemInfo(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3765
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3766
    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3635
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3636
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    .prologue
    .line 3464
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setEnabled(Ljava/lang/Object;Z)V

    .line 3465
    return-void
.end method

.method public final setFocusable(Z)V
    .locals 2

    .prologue
    .line 3294
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setFocusable(Ljava/lang/Object;Z)V

    .line 3295
    return-void
.end method

.method public final setFocused(Z)V
    .locals 2

    .prologue
    .line 3318
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setFocused(Ljava/lang/Object;Z)V

    .line 3319
    return-void
.end method

.method public final setLongClickable(Z)V
    .locals 2

    .prologue
    .line 3440
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setLongClickable(Ljava/lang/Object;Z)V

    .line 3441
    return-void
.end method

.method public final setPackageName(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 3563
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3564
    return-void
.end method

.method public final setParent(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3151
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    .line 3152
    return-void
.end method

.method public final setScrollable(Z)V
    .locals 2

    .prologue
    .line 3512
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setScrollable(Ljava/lang/Object;Z)V

    .line 3513
    return-void
.end method

.method public final setSelected(Z)V
    .locals 2

    .prologue
    .line 3392
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setSelected(Ljava/lang/Object;Z)V

    .line 3393
    return-void
.end method

.method public final setSource(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2823
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 2824
    return-void
.end method

.method public final setVisibleToUser(Z)V
    .locals 2

    .prologue
    .line 3343
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->setVisibleToUser(Ljava/lang/Object;Z)V

    .line 3344
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4428
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4432
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 4433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInParent: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    invoke-virtual {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInScreen: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4438
    const-string v0, "; packageName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4439
    const-string v0, "; className: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4440
    const-string v0, "; text: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5596
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4441
    const-string v0, "; contentDescription: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4442
    const-string v0, "; viewId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5677
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    const-string v0, "; checkable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6231
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isCheckable(Ljava/lang/Object;)Z

    move-result v1

    .line 4444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4445
    const-string v0, "; checked: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6255
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isChecked(Ljava/lang/Object;)Z

    move-result v1

    .line 4445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4446
    const-string v0, "; focusable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4447
    const-string v0, "; focused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4448
    const-string v0, "; selected: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4449
    const-string v0, "; clickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4450
    const-string v0, "; longClickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4451
    const-string v0, "; enabled: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4452
    const-string v0, "; password: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6473
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isPassword(Ljava/lang/Object;)Z

    move-result v1

    .line 4452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "; scrollable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6497
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL$9HGMSP3IDTKM8BRJELO70RRIEGNNCD1FEPKMATPFC5HM6PBJEDKM4QBCD5Q7IBQ1CDHMASRJD5H6IR39EHSKSRR4CL4MSPJF8DNMQS31EGI42OR3CLPN6QB2D5M6IT3P9PNM8PA9DPJ6UIBDE1M3M___:Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;

    iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;->isScrollable(Ljava/lang/Object;)Z

    move-result v1

    .line 4453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    const-string v0, "; ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4456
    invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4457
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v3, v1, v3

    .line 4458
    xor-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .line 7470
    sparse-switch v3, :sswitch_data_0

    .line 7508
    const-string v0, "ACTION_UNKNOWN"

    .line 4459
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    if-eqz v1, :cond_0

    .line 4461
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 4463
    goto :goto_0

    .line 7472
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_1

    .line 7474
    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1

    .line 7476
    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_1

    .line 7478
    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1

    .line 7480
    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_1

    .line 7482
    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_1

    .line 7484
    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_1

    .line 7486
    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_1

    .line 7488
    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    .line 7490
    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    .line 7492
    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_1

    .line 7494
    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_1

    .line 7496
    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_1

    .line 7498
    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_1

    .line 7500
    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_1

    .line 7502
    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_1

    .line 7504
    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_1

    .line 7506
    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_1

    .line 4464
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7470
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method
