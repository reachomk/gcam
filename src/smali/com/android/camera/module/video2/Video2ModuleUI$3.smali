.class final Lcom/android/camera/module/video2/Video2ModuleUI$3;
.super Ljava/lang/Object;
.source "Video2ModuleUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2ModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2ModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2ModuleUI;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2ModuleUI$3;->this$0:Lcom/android/camera/module/video2/Video2ModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2ModuleUI$3;->this$0:Lcom/android/camera/module/video2/Video2ModuleUI;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2ModuleUI;->access$100(Lcom/android/camera/module/video2/Video2ModuleUI;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    return-void
.end method
