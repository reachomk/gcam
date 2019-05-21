.class public Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;
.super Ljava/lang/Object;
.source "ProgressCallbackImpl.java"

# interfaces
.implements Lcom/google/android/apps/refocus/processing/ProgressCallback;


# instance fields
.field private range:F

.field private rangeStart:F

.field private final session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;


# direct methods
.method public constructor <init>(Lcom/android/camera/session/StackableSession;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->rangeStart:F

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->range:F

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 20
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    .line 21
    return-void
.end method

.method private setStatus(I)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/camera/ui/PreviewContentNoOp;->from(I[Ljava/lang/Object;)Lcom/android/camera/ui/UiString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 37
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 3

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->range:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->rangeStart:F

    add-float/2addr v0, v1

    .line 26
    iget-object v1, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/android/camera/session/StackableSession;->setProgress(I)V

    .line 27
    return-void
.end method

.method public setRange(FF)V
    .locals 1

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->rangeStart:F

    .line 54
    sub-float v0, p2, p1

    iput v0, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->range:F

    .line 55
    return-void
.end method

.method public setStatus(Lcom/android/camera/ui/UiString;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/refocus/processing/ProgressCallbackImpl;->session$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    invoke-interface {v0, p1}, Lcom/android/camera/session/StackableSession;->setProgressMessage(Lcom/android/camera/ui/UiString;)V

    .line 32
    return-void
.end method

.method public wasCancelled()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
