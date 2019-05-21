.class final Lcom/android/camera/burst/editor/BurstEditorFragment$7;
.super Ljava/lang/Object;
.source "BurstEditorFragment.java"

# interfaces
.implements Lcom/android/camera/burst/editor/AddCreationFabMenu$AddCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$7;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Lcom/android/camera/burst/postprocessing/CreationType;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$7;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$500(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;->generateCreationAsync(Lcom/android/camera/burst/postprocessing/CreationType;)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$7;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$300(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$7;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->dismiss()V

    .line 272
    return-void
.end method
