.class final Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;
.super Ljava/lang/Object;
.source "RefocusTutorialOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slide"
.end annotation


# instance fields
.field private final animations:Landroid/animation/AnimatorSet;

.field private final buttonTitleRes:I

.field private final slideId:I

.field private final titleRes:I


# direct methods
.method public constructor <init>(IIILandroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->titleRes:I

    .line 39
    iput p2, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->slideId:I

    .line 40
    iput p3, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->buttonTitleRes:I

    .line 41
    iput-object p4, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->animations:Landroid/animation/AnimatorSet;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->animations:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->slideId:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->titleRes:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/apps/refocus/capture/RefocusTutorialOverlay$Slide;->buttonTitleRes:I

    return v0
.end method
