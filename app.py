import gradio as gr

def merhaba(isim):
    isim = (isim or "").strip() or "Dünya"
    return f"Merhaba, {isim}! 👋"

demo = gr.Interface(
    fn=merhaba,
    inputs=gr.Textbox(label="İsmin"),
    outputs="text",
    title="Merhaba Gradio",
    allow_flagging="never"
)

demo.launch(server_name="0.0.0.0", server_port=7860)