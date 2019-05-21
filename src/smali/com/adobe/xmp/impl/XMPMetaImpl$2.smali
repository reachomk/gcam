.class final Lcom/adobe/xmp/impl/XMPMetaImpl$2;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/xmp/properties/XMPProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/xmp/impl/XMPMetaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;->val$value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
