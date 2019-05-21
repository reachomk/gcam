.class public Lcom/android/camera/ui/CountDownView;
.super Landroid/widget/FrameLayout;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CountDownView$MainHandler;,
        Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private remainingSecondsView:Landroid/widget/TextView;

.field private remainingSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "CountDownView"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/CountDownView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v1, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    .line 25
    new-instance v0, Lcom/android/camera/ui/CountDownView$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/CountDownView$MainHandler;-><init>(Lcom/android/camera/ui/CountDownView;B)V

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->handler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CountDownView;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CountDownView;ZI)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(ZI)V

    return-void
.end method

.method private final remainingSecondsChanged(ZI)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3fb00000    # 1.375f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 61
    iput p2, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_0

    .line 63
    if-eqz p1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownStarted()V

    .line 70
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 72
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onCountDownFinished()V

    .line 86
    :cond_1
    :goto_1
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    iget v1, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;->onRemainingSecondsChanged(I)V

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 78
    const-string v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 1090
    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 1091
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1092
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1093
    iget-object v2, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1094
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1095
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    .line 1098
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1099
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1100
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1101
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x320

    .line 1102
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1103
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method public final cancelCountDown()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    if-lez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public final isCountingDown()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 109
    const v0, 0x7f1100e3

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->remainingSecondsView:Landroid/widget/TextView;

    .line 110
    return-void
.end method

.method public final setCountDownStatusListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView;->listener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 117
    return-void
.end method

.method public final startCountDown(I)V
    .locals 3

    .prologue
    .line 125
    if-gtz p1, :cond_0

    .line 126
    sget-object v0, Lcom/android/camera/ui/CountDownView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid input for countdown timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->cancelCountDown()V

    .line 132
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(ZI)V

    goto :goto_0
.end method
