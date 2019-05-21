.class final Lcom/android/camera/ui/ProgressOverlay$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ProgressOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ProgressOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ProgressOverlay;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    sget v1, Lcom/android/camera/ui/ProgressOverlay$State;->PROGRESSING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/ProgressOverlay;->access$302$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U94ADQ62T357C______(Lcom/android/camera/ui/ProgressOverlay;I)I

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/ProgressOverlay;->access$400(Lcom/android/camera/ui/ProgressOverlay;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ProgressOverlay;->access$002(Lcom/android/camera/ui/ProgressOverlay;I)I

    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/ProgressOverlay;->access$500(Lcom/android/camera/ui/ProgressOverlay;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/ProgressOverlay;->access$102(Lcom/android/camera/ui/ProgressOverlay;F)F

    .line 230
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    sget v1, Lcom/android/camera/ui/ProgressOverlay$State;->PROGRESSING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/ProgressOverlay;->access$302$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U94ADQ62T357C______(Lcom/android/camera/ui/ProgressOverlay;I)I

    .line 235
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$3;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    sget v1, Lcom/android/camera/ui/ProgressOverlay$State;->FADING_IN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R:I

    invoke-static {v0, v1}, Lcom/android/camera/ui/ProgressOverlay;->access$302$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U9R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUK3IDTJN4PBJED7NCPBIDHGNI92JEHGN8P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBQGE9NMESJ5EDPKUTJ5E9M62U94ADQ62T357C______(Lcom/android/camera/ui/ProgressOverlay;I)I

    .line 223
    return-void
.end method
