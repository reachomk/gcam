.class final Lcom/google/android/apps/refocus/ViewerActivity$2;
.super Ljava/lang/Object;
.source "ViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/ViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/ViewerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/ViewerActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/refocus/ViewerActivity$2;->this$0:Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity$2;->this$0:Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-static {v0}, Lcom/google/android/apps/refocus/ViewerActivity;->access$300(Lcom/google/android/apps/refocus/ViewerActivity;)Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/refocus/ViewerActivity$2;->this$0:Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-static {v1}, Lcom/google/android/apps/refocus/ViewerActivity;->access$200(Lcom/google/android/apps/refocus/ViewerActivity;)Lcom/google/android/apps/refocus/viewer/RGBZViewer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/viewer/RGBZFocusControls;->setFocusClient(Lcom/google/android/apps/refocus/viewer/RGBZFocusControls$FocusClient;)V

    .line 151
    return-void
.end method
