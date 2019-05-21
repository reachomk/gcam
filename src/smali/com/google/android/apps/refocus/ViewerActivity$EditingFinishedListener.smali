.class public Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;
.super Ljava/lang/Object;
.source "ViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/ViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditingFinishedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/refocus/ViewerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/ViewerActivity;)V
    .locals 0

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;->this$0:Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1091
    iget-object v0, p0, Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;->this$0:Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-static {v0, v1}, Lcom/google/android/apps/refocus/ViewerActivity;->access$002(Lcom/google/android/apps/refocus/ViewerActivity;Z)Z

    .line 1092
    new-instance v0, Lcom/google/android/apps/refocus/ViewerActivity$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/refocus/ViewerActivity$1$1;-><init>(Lcom/google/android/apps/refocus/ViewerActivity$EditingFinishedListener;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 1103
    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/ViewerActivity$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1104
    return-void
.end method
