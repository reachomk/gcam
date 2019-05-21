.class final Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;
.super Ljava/lang/Object;
.source "FocusControllerImpl2015.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusControllerImpl2015;->setFocusRatio(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

.field private synthetic val$ratio:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusControllerImpl2015;F)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    iput p2, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;->val$ratio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isPassiveFocusRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->isActiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$6;->val$ratio:F

    invoke-interface {v0, v1}, Lcom/android/camera/ui/focus/FocusRing;->setRadiusRatio(F)V

    .line 146
    :cond_1
    return-void
.end method
