.class final Lcom/android/camera/util/AccessibilityController$2;
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
    .line 47
    iput-object p1, p0, Lcom/android/camera/util/AccessibilityController$2;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityController$2;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-static {v0}, Lcom/android/camera/util/AccessibilityController;->access$000(Lcom/android/camera/util/AccessibilityController;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->zoomOut()F

    .line 51
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityController$2;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-static {v0}, Lcom/android/camera/util/AccessibilityController;->access$100(Lcom/android/camera/util/AccessibilityController;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/util/AccessibilityController$2;->this$0:Lcom/android/camera/util/AccessibilityController;

    invoke-static {v0}, Lcom/android/camera/util/AccessibilityController;->access$200(Lcom/android/camera/util/AccessibilityController;)V

    .line 53
    return-void
.end method
