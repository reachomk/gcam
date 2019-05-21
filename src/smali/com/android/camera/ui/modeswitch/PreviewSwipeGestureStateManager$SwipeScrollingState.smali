.class final Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;
.super Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;
.source "PreviewSwipeGestureStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeScrollingState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$PreviewSwipeGestureState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;B)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;-><init>(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)V

    return-void
.end method


# virtual methods
.method public final onEnterState()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->startScrolling()V

    .line 143
    return-void
.end method

.method public final onExitState()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->resetSwipeState()V

    .line 148
    return-void
.end method

.method public final onFingerUp()Z
    .locals 10

    .prologue
    const-wide v8, 0x405f400000000000L    # 125.0

    const/high16 v6, 0x437a0000    # 250.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$300(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return v0

    .line 179
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v4}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 180
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95TMMUP35EDRMIT33D0NL0SJ5EPKMATQJETKN0PA7CLPN8TBICL9N8OBKCL6M2RJ1CTIN492DDTI6AEO_(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)I

    move-result v3

    sget v4, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->PHOTO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v3, v4, :cond_5

    .line 182
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, v4, v8

    if-gez v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$000(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v3

    const/high16 v4, -0x3fc00000    # -3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->snapCover(FZ)V

    :cond_1
    :goto_1
    move v0, v1

    .line 214
    goto :goto_0

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->snapCoverBack(FZ)V

    goto :goto_1

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v3}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->snapCover(FZ)V

    goto :goto_1

    .line 194
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->switchMode(Z)V

    goto :goto_1

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95TMMUP35EDRMIT33D0NL0SJ5EPKMATQJETKN0PA7CLPN8TBICL9N8OBKCL6M2RJ1CTIN492DDTI6AEO_(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)I

    move-result v0

    sget v3, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->VIDEO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v0, v3, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v0, v4, v8

    if-gez v0, :cond_7

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$000(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->snapCover(FZ)V

    goto :goto_1

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->snapCoverBack(FZ)V

    goto :goto_1

    .line 206
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_8

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->snapCover(FZ)V

    goto :goto_1

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->switchMode(Z)V

    goto/16 :goto_1
.end method

.method public final onScroll(F)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 152
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$300(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRDDTI6ASRND5Q66Q1FA1P6ATJ9CLRL6TR9E1IKEPBJEHQN4PAJEHGN8PADC5N62PR5E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95TMMUP35EDRMIT33D0NL0SJ5EPKMATQJETKN0PA7CLPN8TBICL9N8OBKCL6M2RJ1CTIN492DDTI6AEO_(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)I

    move-result v2

    sget v4, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$Mode;->VIDEO_MODE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIURBFCHIN6TR9EHHMGBQGE9INCQB5ET9NEQBGCL3MASRKELP6AKRKC5Q6AJB1DPGMEPBI4H6MUP357C______:I

    if-ne v2, v4, :cond_1

    move v0, v1

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    iget-object v4, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v4}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v4

    add-float/2addr v4, p1

    invoke-static {v2, v4}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$202(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;F)F

    .line 159
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    :cond_2
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v2}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    :cond_3
    move v2, v3

    .line 165
    :goto_1
    iget-object v4, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v4}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$400(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->scrollCover(FZ)V

    .line 168
    cmpl-float v0, v2, v3

    if-nez v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->resetSwipeState()V

    :cond_4
    move v0, v1

    .line 171
    goto :goto_0

    .line 163
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager$SwipeScrollingState;->this$0:Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;

    invoke-static {v4}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;->access$200(Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureStateManager;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x437a0000    # 250.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1
.end method
