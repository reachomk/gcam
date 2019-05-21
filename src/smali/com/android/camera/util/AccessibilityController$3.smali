.class final Lcom/android/camera/util/AccessibilityController$3;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/AccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/camera/util/AccessibilityController;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/util/AccessibilityController$3;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityController$3;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-static {v0}, Lcom/android/camera/util/AccessibilityController;->access$300(Lcom/android/camera/util/AccessibilityController;)Lcom/android/camera/burst/BurstA11yButtonController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityController$3;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-static {v0}, Lcom/android/camera/util/AccessibilityController;->access$300(Lcom/android/camera/util/AccessibilityController;)Lcom/android/camera/burst/BurstA11yButtonController;

    move-result-object v0

    new-instance v1, Lcom/android/camera/util/ProcessingOutputStream$1;

    invoke-direct {v1, p1}, Lcom/android/camera/util/ProcessingOutputStream$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/BurstA11yButtonController;->start(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 70
    :cond_0
    return-void
.end method
