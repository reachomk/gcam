.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$2;
.super Ljava/lang/Object;
.source "TouchToFocusSmartImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$2;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    check-cast p2, Ljava/lang/Boolean;

    .line 1122
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$2;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->access$200(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V

    .line 1125
    :cond_0
    const/4 v0, 0x0

    .line 119
    return-object v0
.end method
