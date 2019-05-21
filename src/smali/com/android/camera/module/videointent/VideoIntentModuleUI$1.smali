.class final Lcom/android/camera/module/videointent/VideoIntentModuleUI$1;
.super Ljava/lang/Object;
.source "VideoIntentModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/videointent/VideoIntentModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/videointent/VideoIntentModuleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/module/videointent/VideoIntentModuleUI;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$1;->this$0:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewAreaChanged(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/module/videointent/VideoIntentModuleUI$1;->this$0:Lcom/android/camera/module/videointent/VideoIntentModuleUI;

    .line 54
    return-void
.end method
