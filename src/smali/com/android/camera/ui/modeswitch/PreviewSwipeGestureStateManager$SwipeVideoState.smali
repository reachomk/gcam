.class final Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;
.super Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;
.source "PreviewSwipeGestureStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeVideoState"
.end annotation


# instance fields
.field private eventCount:I

.field private synthetic this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    return-void
.end method


# virtual methods
.method public final onEnterState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->eventCount:I

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    sget v1, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->VIDEO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FDLNM8PBJETKN8OR85T874PBMD5INEKRND5O6AHR5EDQ7ASJ5ADQ62T359LGMSOB7CLP28JBFCHIJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NMQRR4CLPNEQBKCDK2UK3ICLR6IPBNADRMIS358TIN6T3LE9IL6T31EHIKQOBEC5JMASH49LNM8P9R(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;I)I

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0, v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$202(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0, v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$002(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    .line 228
    return-void
.end method

.method public final onScroll(F)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 232
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$300(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    :goto_0
    return v0

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v3

    add-float/2addr v3, p1

    invoke-static {v2, v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$202(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    .line 236
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->eventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->eventCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 238
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x437a0000    # 250.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->scrollCover(FZ)V

    .line 240
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    new-instance v3, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;

    iget-object v4, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-direct {v3, v4, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V

    invoke-static {v2, v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$600(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;)V

    :goto_1
    move v0, v1

    .line 245
    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeVideoState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0, v5}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$202(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    goto :goto_1
.end method
