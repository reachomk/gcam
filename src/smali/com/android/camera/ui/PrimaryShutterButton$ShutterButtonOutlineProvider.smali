.class final Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "PrimaryShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PrimaryShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutterButtonOutlineProvider"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PrimaryShutterButton;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;)V
    .locals 0

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PrimaryShutterButton;B)V
    .locals 0

    .prologue
    .line 1443
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;-><init>(Lcom/android/camera/ui/PrimaryShutterButton;)V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .prologue
    .line 1447
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1448
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$000(Lcom/android/camera/ui/PrimaryShutterButton;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1449
    iget-object v1, p0, Lcom/android/camera/ui/PrimaryShutterButton$ShutterButtonOutlineProvider;->this$0:Lcom/android/camera/ui/PrimaryShutterButton;

    invoke-static {v1}, Lcom/android/camera/ui/PrimaryShutterButton;->access$4200(Lcom/android/camera/ui/PrimaryShutterButton;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 1450
    return-void
.end method
