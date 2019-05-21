.class final Lcom/android/camera/ui/CaptureAnimationOverlay$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureAnimationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CaptureAnimationOverlay;->startFlashAnimation()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

.field private synthetic val$syncOnEnd:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CaptureAnimationOverlay;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    iput-object p2, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->val$syncOnEnd:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-static {v0, v2}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$202(Lcom/android/camera/ui/CaptureAnimationOverlay;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    sget v1, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->NO_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5O78TBICL0MSQBDC5Q6IRRE9TR6ASJCC5SJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95T1M2S3KELP6AGBED5MM2T39DTN4UTJ5E9M62U94ADQ62T357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IK2RJ9DLGN8QBFDP7NCPBIDHGNI92JEHGN8P9R(Lcom/android/camera/ui/CaptureAnimationOverlay;I)I

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->val$syncOnEnd:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    sget v1, Lcom/android/camera/ui/CaptureAnimationOverlay$State;->FLASH_ANIMATION$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUGR1E1Q7ASJ585N6IRB1EHKMURIFEPIN4R31F4I56T31EHIJM___:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQ3C5O78TBICL0MSQBDC5Q6IRRE9TR6ASJCC5SJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTB95T1M2S3KELP6AGBED5MM2T39DTN4UTJ5E9M62U94ADQ62T357CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9F8DGN0T3LE9IK2RJ9DLGN8QBFDP7NCPBIDHGNI92JEHGN8P9R(Lcom/android/camera/ui/CaptureAnimationOverlay;I)I

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/CaptureAnimationOverlay$2;->this$0:Lcom/android/camera/ui/CaptureAnimationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setVisibility(I)V

    .line 133
    return-void
.end method
