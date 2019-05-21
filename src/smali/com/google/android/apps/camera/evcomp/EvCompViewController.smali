.class public final Lcom/google/android/apps/camera/evcomp/EvCompViewController;
.super Ljava/lang/Object;
.source "EvCompViewController.java"


# instance fields
.field private final evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

.field private final evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;

    invoke-direct {v0}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompVisibleStatechart;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    .line 23
    new-instance v0, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/evcomp/GeneratedEvCompViewStatechart;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    .line 24
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->disable()V

    .line 76
    return-void
.end method

.method public final enable(IIF)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/camera/statecharts/StateBase;->enable(IIF)V

    .line 72
    return-void
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->hide()V

    .line 68
    return-void
.end method

.method public final initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBN7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R55B0____(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/content/Context;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/evcomp/EvCompView;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .line 1081
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1083
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1084
    const v2, 0x7f060006

    .line 1085
    invoke-static {p2, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 1086
    new-instance v2, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/apps/camera/evcomp/EvCompViewController$1;-><init>(FFLcom/google/android/apps/camera/evcomp/EvCompView;)V

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1100
    const/high16 v0, 0x10b0000

    .line 1101
    invoke-static {p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/animation/ObjectAnimator;

    .line 1102
    invoke-virtual {v8, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    int-to-float v7, v2

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBNADQ62T35CDK62SJK7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUPBMCDNMQS1F8LR46RRDE1B6IPBN7D662RJ4E9NMIP1FC5N6IRB1EHKMURHFAPGMOTB585N6IRB1EHNN4EQ99HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEQ655B0____(Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ValueAnimator;ILcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;F)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    iget-object v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-virtual {v0, p1, v8, v1}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->initialize(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/animation/ObjectAnimator;Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;->enter()V

    .line 52
    return-void
.end method

.method public final onFingerUp()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onFingerUp()V

    .line 64
    return-void
.end method

.method public final onScroll(F)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompVisibleStatechart:Lcom/google/android/apps/camera/evcomp/EvCompVisibleStatechart;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/statecharts/StateBase;->onScroll(F)V

    .line 60
    return-void
.end method

.method public final showAffordance()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->evCompViewStatechart:Lcom/google/android/apps/camera/evcomp/EvCompViewStatechart;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->showAffordance()V

    .line 56
    return-void
.end method
