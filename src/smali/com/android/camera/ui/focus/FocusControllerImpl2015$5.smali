.class final Lcom/android/camera/ui/focus/FocusControllerImpl2015$5;
.super Ljava/lang/Object;
.source "FocusControllerImpl2015.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/focus/FocusControllerImpl2015;->configurePreviewDimensions(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

.field private synthetic val$uncoveredPreviewRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/focus/FocusControllerImpl2015;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$5;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    iput-object p2, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$5;->val$uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$5;->val$uncoveredPreviewRect:Landroid/graphics/RectF;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "configurePreviewDimensions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2015$5;->this$0:Lcom/android/camera/ui/focus/FocusControllerImpl2015;

    invoke-static {v0}, Lcom/android/camera/ui/focus/FocusControllerImpl2015;->access$000(Lcom/android/camera/ui/focus/FocusControllerImpl2015;)Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->configurePreviewDimensions$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8HHR55B0____()V

    .line 133
    return-void
.end method
