.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$35;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$35;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 996
    .line 1999
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$35;->val$context:Landroid/content/Context;

    const v1, 0x7f090007

    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getByteBufferFromResource(Landroid/content/Context;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 996
    return-object v0
.end method
