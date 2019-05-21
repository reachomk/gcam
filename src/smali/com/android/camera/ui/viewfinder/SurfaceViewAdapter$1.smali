.class final Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;
.super Ljava/lang/Object;
.source "SurfaceViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;-><init>(Lcom/android/camera/debug/Logger$Factory;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/MainActivityLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    .line 113
    new-instance v0, Lcom/android/camera/util/Size;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 114
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$100(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    .line 115
    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5INEPJ9DPI6ASHFADQN4PJ1CDILCQB5ET0M8OBGEHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/burst/OrientationLockController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    .line 116
    invoke-static {v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$300(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$400(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$500(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onLayoutChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$600(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$700(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter$1;->this$0:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-static {v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRMD5INEPJ9DPI6ASHFADQN4PJ1CDILCQB5ET0M8OBGEHIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;)Lcom/android/camera/burst/OrientationLockController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->naturalUiOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->access$302(Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;Lcom/android/camera/util/layout/NaturalOrientation;)Lcom/android/camera/util/layout/NaturalOrientation;

    goto :goto_0
.end method
